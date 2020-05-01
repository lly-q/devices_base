.class Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;
.super Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$Stub;
.source "SupplicantStaNetworkHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaNetworkHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantStaNetworkHalCallback"
.end annotation


# instance fields
.field private final mFramewokNetworkId:I

.field private final mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;ILjava/lang/String;)V
    .locals 0
    .param p2, "framewokNetworkId"    # I
    .param p3, "ssid"    # Ljava/lang/String;

    .line 3368
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-direct {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$Stub;-><init>()V

    .line 3369
    iput p2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    .line 3370
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    .line 3371
    return-void
.end method


# virtual methods
.method public onNetworkEapIdentityRequest()V
    .locals 5

    .line 3403
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$000(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const-string v2, "onNetworkEapIdentityRequest"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$100(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V

    .line 3405
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$300(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 3406
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$200(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    .line 3405
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkIdentityRequestEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 3407
    monitor-exit v0

    .line 3408
    return-void

    .line 3407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNetworkEapSimGsmAuthRequest(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;)V
    .locals 7
    .param p1, "params"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;

    .line 3376
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$000(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3377
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const-string v2, "onNetworkEapSimGsmAuthRequest"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$100(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V

    .line 3378
    iget-object v1, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;->rands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3379
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 3380
    .local v2, "i":I
    iget-object v3, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;->rands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 3381
    .local v4, "rand":[B
    add-int/lit8 v5, v2, 0x1

    .local v5, "i":I
    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 3382
    .end local v2    # "i":I
    .end local v4    # "rand":[B
    nop

    .line 3380
    move v2, v5

    goto :goto_0

    .line 3383
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$300(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 3384
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$200(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    .line 3383
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkGsmAuthRequestEvent(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 3385
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i":I
    monitor-exit v0

    .line 3386
    return-void

    .line 3385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNetworkEapSimUmtsAuthRequest(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;)V
    .locals 8
    .param p1, "params"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;

    .line 3391
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$000(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const-string v2, "onNetworkEapSimUmtsAuthRequest"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$100(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V

    .line 3393
    iget-object v1, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;->rand:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    .line 3394
    .local v1, "randHex":Ljava/lang/String;
    iget-object v2, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;->autn:[B

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    .line 3395
    .local v2, "autnHex":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 3396
    .local v3, "data":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$300(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 3397
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->access$200(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    .line 3396
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkUmtsAuthRequestEvent(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 3398
    .end local v1    # "randHex":Ljava/lang/String;
    .end local v2    # "autnHex":Ljava/lang/String;
    .end local v3    # "data":[Ljava/lang/String;
    monitor-exit v0

    .line 3399
    return-void

    .line 3398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
