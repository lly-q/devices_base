.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x3e9

.field private static final REMOVE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public avoidUnvalidated:Z

.field public clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public everCaptivePortalDetected:Z

.field public everConnected:Z

.field public everValidated:Z

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLingerExpiryMs:J

.field private mLingerMessage:Lcom/android/internal/util/WakeupMessage;

.field private final mLingerTimerForRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLingerTimers:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLingering:Z

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNumBackgroundNetworkRequests:I

.field private mNumRequestNetworkRequests:I

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 244
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ac"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "net"    # Landroid/net/Network;
    .param p4, "info"    # Landroid/net/NetworkInfo;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "score"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "misc"    # Landroid/net/NetworkMisc;
    .param p11, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p12, "connService"    # Lcom/android/server/ConnectivityService;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 236
    iput v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    .line 253
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    .line 254
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 255
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 256
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 257
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 258
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 259
    iput p7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    .line 260
    iput-object p12, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    .line 261
    iput-object p8, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    .line 262
    iput-object p9, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    .line 263
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, p8, p9, p0, p11}, Lcom/android/server/ConnectivityService;->createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    .line 264
    iput-object p10, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    .line 265
    return-void
.end method

.method private getCurrentScore(Z)I
    .locals 2
    .param p1, "pretendValidated"    # Z

    .line 436
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 437
    :cond_0
    const/16 v0, 0x64

    return v0

    .line 440
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    .line 441
    .local v0, "score":I
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->ignoreWifiUnvalidationPenalty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    add-int/lit8 v0, v0, -0x28

    .line 444
    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 445
    :cond_3
    return v0
.end method

.method private ignoreWifiUnvalidationPenalty()Z
    .locals 5

    .line 451
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    .line 452
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 453
    .local v0, "isWifi":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 454
    .local v3, "avoidBadWifi":Z
    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    iget-boolean v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method private updateRequestCounts(ZLandroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "add"    # Z
    .param p2, "request"    # Landroid/net/NetworkRequest;

    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 288
    .local v0, "delta":I
    :goto_0
    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    iget-object v2, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 304
    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    :pswitch_0
    goto :goto_1

    .line 294
    :pswitch_1
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 295
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    .line 296
    goto :goto_1

    .line 290
    :pswitch_2
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 291
    nop

    .line 307
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .locals 8
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 315
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 316
    .local v0, "existing":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 317
    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 320
    sget-object v3, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    const-string v4, "Duplicate requestId for %s and %s on %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v0, v5, v2

    const/4 v6, 0x2

    .line 321
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 320
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 326
    return v2
.end method

.method public clearLingerState()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 566
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 568
    return-void
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 625
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result p1

    return p1
.end method

.method public connService()Lcom/android/server/ConnectivityService;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public dumpLingerTimers(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 571
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .local v1, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .end local v1    # "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method

.method public getCaptivePortalUrlBlacklist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getCaptivePortalUrlBlacklist()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScore()I
    .locals 1

    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .locals 1

    .line 466
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getLingerExpiry()J
    .locals 2

    .line 518
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    return-wide v0
.end method

.method public getNetworkState()Landroid/net/NetworkState;
    .locals 8

    .line 474
    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v0, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 478
    .local v6, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkState;

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    .line 481
    .end local v6    # "subscriberId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isBackgroundNetwork()Z
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    if-lez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0
.end method

.method public isLingering()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return v0
.end method

.method public isSatisfyingRequest(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 346
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVPN()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public linger()V
    .locals 1

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 549
    return-void
.end method

.method public lingerRequest(Landroid/net/NetworkRequest;JJ)V
    .locals 5
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "now"    # J
    .param p4, "duration"    # J

    .line 489
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already lingered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    add-long v0, p2, p4

    .line 496
    .local v0, "expiryMs":J
    new-instance v2, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;-><init>(Landroid/net/NetworkRequest;J)V

    .line 498
    .local v2, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    return-void
.end method

.method public maybeStartClat(Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "netd"    # Landroid/os/INetworkManagementService;

    .line 586
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    return-void

    .line 589
    :cond_0
    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat;

    invoke-direct {v0, p1, p0}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/os/INetworkManagementService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    .line 590
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    .line 591
    return-void
.end method

.method public maybeStopClat()V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-nez v0, :cond_0

    .line 596
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    .line 600
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 619
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    return-object v0
.end method

.method public network()Landroid/net/Network;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v0
.end method

.method public numBackgroundNetworkRequests()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    return v0
.end method

.method public numForegroundNetworkRequests()I
    .locals 2

    .line 377
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public numNetworkRequests()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public numRequestNetworkRequests()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    return v0
.end method

.method public removeRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 334
    .local v0, "existing":Landroid/net/NetworkRequest;
    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 336
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 337
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 340
    :cond_1
    return-void
.end method

.method public requestAt(I)Landroid/net/NetworkRequest;
    .locals 1
    .param p1, "index"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 411
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 412
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0
.end method

.method public satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 416
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 417
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0
.end method

.method public setCurrentScore(I)V
    .locals 0
    .param p1, "newScore"    # I

    .line 470
    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    .line 471
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  nethandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 604
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  everValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  lastValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} lingering{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} acceptUnvalidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} everCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} lastCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} clat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    return-object v0
.end method

.method public unlinger()V
    .locals 1

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 553
    return-void
.end method

.method public unlingerRequest(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 507
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .line 508
    .local v0, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 511
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 512
    const/4 v1, 0x1

    return v1

    .line 514
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateClat(Landroid/os/INetworkManagementService;)V
    .locals 2
    .param p1, "netd"    # Landroid/os/INetworkManagementService;

    .line 575
    invoke-static {p0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    .line 576
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    .line 577
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->maybeStartClat(Landroid/os/INetworkManagementService;)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->maybeStopClat()V

    .line 582
    :goto_0
    return-void
.end method

.method public updateLingerTimer()V
    .locals 11

    .line 522
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    iget-wide v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    .line 523
    .local v3, "newExpiry":J
    :goto_0
    iget-wide v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 536
    :cond_2
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 537
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK_LINGER_COMPLETE."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e9

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/ConnectivityService;->makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 541
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 544
    :cond_3
    iput-wide v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    .line 545
    return-void
.end method
