.class public Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
.super Ljava/lang/Object;
.source "SupplicantP2pIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final DEFAULT_OPERATING_CLASS:I = 0x51

.field private static final RESULT_NOT_VALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SupplicantP2pIfaceHal"

.field private static final WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

.field private mHidlSupplicantIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

.field private mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-string v0, "^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 82
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 83
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mHidlSupplicantIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 84
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 85
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 102
    new-instance v1, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$Wvwk6xCSAknWmsVUgpUqV_3NQiE;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$Wvwk6xCSAknWmsVUgpUqV_3NQiE;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 110
    new-instance v1, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$AwvLtkH4UyCOhUYx__3ExZj_7jQ;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$AwvLtkH4UyCOhUYx__3ExZj_7jQ;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 119
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    .line 122
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 65
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initSupplicantService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 65
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    return-void
.end method

.method private addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 322
    .local v1, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 323
    const/4 v2, 0x1

    iput v2, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 324
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .local v2, "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    nop

    .line 328
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v4

    .line 329
    .local v4, "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    if-nez v4, :cond_0

    .line 330
    const-string v5, "SupplicantP2pIfaceHal"

    const-string v6, "Can\'t call addIface: ISupplicantP2pIface is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 333
    :cond_0
    :try_start_3
    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$uOALwzLWCrgwsgrkWxQlW6drzT8;

    invoke-direct {v5, v2}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$uOALwzLWCrgwsgrkWxQlW6drzT8;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->addInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    .end local v4    # "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    nop

    .line 347
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object v3

    .line 342
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicant.addInterface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 345
    monitor-exit v0

    return-object v3

    .line 348
    .end local v1    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v2    # "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-nez v0, :cond_0

    .line 499
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ISupplicantP2pIface is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v3, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$xxcrLmh4P3s14clwwWnJ79St0UM;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$xxcrLmh4P3s14clwwWnJ79St0UM;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    nop

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 293
    return-object v1

    .line 295
    :cond_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getInterface()"

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 298
    .local v4, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$l7P05UXArQDgqCiDU1muZnDZyB4;

    invoke-direct {v5, v2}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$l7P05UXArQDgqCiDU1muZnDZyB4;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    goto :goto_1

    .line 308
    :catch_0
    move-exception v3

    .line 309
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicant.getInterface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 311
    return-object v1

    .line 315
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_2
    goto :goto_0

    .line 316
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    return-object v1

    .line 286
    .end local v2    # "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    :catch_1
    move-exception v2

    .line 287
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object v1
.end method

.method private getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .locals 7
    .param p1, "networkId"    # I

    .line 1896
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1897
    :try_start_0
    const-string v1, "getNetwork"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1898
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetwork("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$PuXtgEcUoHfMGA1SHt2CZh5_b1Q;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$PuXtgEcUoHfMGA1SHt2CZh5_b1Q;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1909
    goto :goto_0

    .line 1906
    :catch_0
    move-exception v3

    .line 1907
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1910
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1911
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "getNetwork got null network"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    monitor-exit v0

    return-object v2

    .line 1914
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getP2pNetworkMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1915
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initSupplicantService()Z
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    nop

    .line 211
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v2, :cond_0

    .line 212
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v0

    return v1

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    monitor-exit v0

    return v1

    .line 218
    :cond_1
    monitor-exit v0

    .line 219
    const/4 v0, 0x1

    return v0

    .line 218
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v0

    return v1

    .line 218
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isV1_1()Z
    .locals 6

    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    :try_start_1
    monitor-exit v0

    return v1

    .line 476
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 474
    monitor-exit v0

    return v1

    .line 476
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$addIfaceV1_1$4(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 335
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 337
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method static synthetic lambda$connect$6(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "generatedPin"    # Ljava/lang/String;

    .line 827
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method static synthetic lambda$getClientList$20(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "clients"    # Ljava/util/ArrayList;

    .line 2272
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2273
    return-void
.end method

.method static synthetic lambda$getDeviceAddress$7(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 4
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "address"    # [B

    .line 1035
    const/4 v0, 0x0

    .line 1037
    .local v0, "parsedAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1040
    goto :goto_0

    .line 1038
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not process reported address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1041
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1042
    return-void
.end method

.method static synthetic lambda$getGroupCapability$9(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p0, "capability"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "cap"    # I

    .line 1237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1238
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$2(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ifaces"    # Ljava/util/ArrayList;

    .line 280
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 285
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$3(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 302
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method static synthetic lambda$getName$5(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "name"    # Ljava/lang/String;

    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method static synthetic lambda$getNetwork$13(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1904
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1905
    return-void
.end method

.method static synthetic lambda$getNfcHandoverRequest$18(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "message"    # Ljava/util/ArrayList;

    .line 2120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2121
    return-void
.end method

.method static synthetic lambda$getNfcHandoverSelect$19(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "message"    # Ljava/util/ArrayList;

    .line 2148
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2149
    return-void
.end method

.method static synthetic lambda$getSsid$8(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ssid"    # Ljava/util/ArrayList;

    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, "ssidString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1085
    nop

    .line 1086
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1089
    goto :goto_0

    .line 1087
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not encode SSID."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1092
    return-void
.end method

.method static synthetic lambda$listNetworks$12(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "networkIds"    # Ljava/util/ArrayList;

    .line 1879
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1880
    return-void
.end method

.method static synthetic lambda$loadGroups$14(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p0, "resultIsCurrent"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "isCurrent"    # Z

    .line 1942
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1943
    return-void
.end method

.method static synthetic lambda$loadGroups$15(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "resultSsid"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ssid"    # Ljava/util/ArrayList;

    .line 1964
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1965
    return-void
.end method

.method static synthetic lambda$loadGroups$16(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 0
    .param p0, "resultBssid"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "bssid"    # [B

    .line 1984
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1985
    return-void
.end method

.method static synthetic lambda$loadGroups$17(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p0, "resultIsGo"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "isGo"    # Z

    .line 2002
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2003
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 104
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 112
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicant/ISupplicantStaIface died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$requestServiceDiscovery$10(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    .locals 1
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "identifier"    # J

    .line 1555
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1556
    return-void
.end method

.method static synthetic lambda$startWpsPinDisplay$11(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "generatedPin"    # Ljava/lang/String;

    .line 1744
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1745
    return-void
.end method

.method private linkToServiceManagerDeath()Z
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v2, "Error on linkToDeath on IServiceManager"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return v1

    .line 137
    :cond_1
    nop

    .line 138
    const/4 v0, 0x1

    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "IServiceManager.linkToDeath exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return v1
.end method

.method private linkToSupplicantDeath()Z
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v2, "Error on linkToDeath on ISupplicant"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return v1

    .line 199
    :cond_1
    nop

    .line 200
    const/4 v0, 0x1

    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "ISupplicant.linkToDeath exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return v1
.end method

.method private linkToSupplicantP2pIfaceDeath()Z
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v2, "Error on linkToDeath on ISupplicantP2pIface"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return v1

    .line 233
    :cond_1
    nop

    .line 234
    const/4 v0, 0x1

    return v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "ISupplicantP2pIface.linkToDeath exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    return v1
.end method

.method private listNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1873
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1874
    :try_start_0
    const-string v1, "listNetworks"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1875
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "listNetworks()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v3, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$EtDVjv9sBbwd_VKqTeizuRtV3z4;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$EtDVjv9sBbwd_VKqTeizuRtV3z4;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1884
    goto :goto_0

    .line 1881
    :catch_0
    move-exception v2

    .line 1882
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1885
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 1886
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .locals 3
    .param p0, "operation"    # Ljava/lang/String;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 484
    if-nez p1, :cond_0

    .line 485
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: no status code returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_0
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " completed successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_1
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 480
    const-string v0, "SupplicantP2pIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private removeIfaceV1_1(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    nop

    .line 377
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v2

    .line 378
    .local v2, "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    if-nez v2, :cond_0

    .line 379
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Can\'t call removeIface: ISupplicantP2pIface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 382
    :cond_0
    :try_start_2
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 383
    .local v3, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 384
    const/4 v4, 0x1

    iput v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 385
    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->removeInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    .line 386
    .local v5, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    iget v6, v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v6, :cond_1

    .line 387
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove iface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 390
    :cond_1
    const/4 v6, 0x0

    :try_start_4
    iput-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    .end local v2    # "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    .end local v3    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v5    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    nop

    .line 396
    :try_start_5
    iput-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 397
    monitor-exit v0

    return v4

    .line 398
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.removeInterface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 394
    monitor-exit v0

    return v1

    .line 398
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private static stringToWpsConfigMethod(Ljava/lang/String;)S
    .locals 5
    .param p0, "configMethod"    # Ljava/lang/String;

    .line 2311
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "int_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "physical_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "ext_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "label"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "usba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "p2ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "nfc_interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "physical_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "virtual_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_b
    const-string v0, "keypad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_c
    const-string v0, "ethernet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_d
    const-string v0, "virtual_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid WPS config method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2339
    :pswitch_0
    const/16 v0, 0x4008

    return v0

    .line 2337
    :pswitch_1
    const/16 v0, 0x2008

    return v0

    .line 2335
    :pswitch_2
    const/16 v0, 0x1000

    return v0

    .line 2333
    :pswitch_3
    const/16 v0, 0x480

    return v0

    .line 2331
    :pswitch_4
    const/16 v0, 0x280

    return v0

    .line 2329
    :pswitch_5
    const/16 v0, 0x100

    return v0

    .line 2327
    :pswitch_6
    const/16 v0, 0x80

    return v0

    .line 2325
    :pswitch_7
    const/16 v0, 0x40

    return v0

    .line 2323
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 2321
    :pswitch_9
    const/16 v0, 0x20

    return v0

    .line 2319
    :pswitch_a
    return v2

    .line 2317
    :pswitch_b
    return v4

    .line 2315
    :pswitch_c
    return v3

    .line 2313
    :pswitch_d
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a36973d -> :sswitch_d
        -0x5499b029 -> :sswitch_c
        -0x43a17e2c -> :sswitch_b
        -0x24a05c72 -> :sswitch_a
        -0x1f2626a6 -> :sswitch_9
        -0x1943c85b -> :sswitch_8
        -0x18d6dc09 -> :sswitch_7
        0x33b345 -> :sswitch_6
        0x36eb5d -> :sswitch_5
        0x61f7ef4 -> :sswitch_4
        0xab4a9c7 -> :sswitch_3
        0x445bd88f -> :sswitch_2
        0x63a518c2 -> :sswitch_1
        0x77d04e15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private supplicantServiceDiedHandler()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 404
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wpsInfoToConfigMethod(I)I
    .locals 3
    .param p1, "info"    # I

    .line 506
    packed-switch p1, :pswitch_data_0

    .line 518
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported WPS provision method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, -0x1

    return v0

    .line 515
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 511
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 508
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelConnect()Z
    .locals 6

    .line 849
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    const-string v1, "cancelConnect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 851
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "cancelConnect()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    goto :goto_0

    .line 854
    :catch_0
    move-exception v2

    .line 855
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 858
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 859
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public cancelServiceDiscovery(Ljava/lang/String;)Z
    .locals 8
    .param p1, "identifier"    # Ljava/lang/String;

    .line 1576
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1577
    :try_start_0
    const-string v1, "cancelServiceDiscovery"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1578
    :cond_0
    if-nez p1, :cond_1

    .line 1579
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "cancelServiceDiscovery requires a valid tag."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1583
    :cond_1
    const-wide/16 v3, 0x0

    .line 1585
    .local v3, "id":J
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v5

    .line 1589
    .end local v3    # "id":J
    .local v1, "id":J
    nop

    .line 1591
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelServiceDiscovery("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1594
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1598
    goto :goto_0

    .line 1595
    :catch_0
    move-exception v4

    .line 1596
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1600
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    monitor-exit v0

    return v4

    .line 1586
    .end local v1    # "id":J
    .local v3, "id":J
    :catch_1
    move-exception v1

    .line 1587
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service discovery identifier invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    monitor-exit v0

    return v2

    .line 1601
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "id":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;

    .line 1763
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1764
    :try_start_0
    const-string v1, "cancelWps"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1765
    :cond_0
    if-nez p1, :cond_1

    .line 1766
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Group name required when requesting WPS KEYPAD."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    monitor-exit v0

    return v2

    .line 1770
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelWps("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    goto :goto_0

    .line 1774
    :catch_0
    move-exception v2

    .line 1775
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1779
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1780
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public configureExtListen(ZII)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "periodInMillis"    # I
    .param p3, "intervalInMillis"    # I

    .line 1269
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    .line 1270
    return v0

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1273
    :try_start_0
    const-string v2, "configureExtListen"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 1276
    :cond_1
    if-nez p1, :cond_2

    .line 1277
    const/4 p2, 0x0

    .line 1278
    const/4 p3, 0x0

    .line 1283
    :cond_2
    if-ltz p2, :cond_4

    if-gez p3, :cond_3

    goto :goto_1

    .line 1289
    :cond_3
    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureExtListen("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    .local v0, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 1293
    invoke-interface {v2, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1292
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    goto :goto_0

    .line 1294
    :catch_0
    move-exception v2

    .line 1295
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1299
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1284
    .end local v0    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_4
    :goto_1
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameters supplied to configureExtListen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    monitor-exit v1

    return v0

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .line 769
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    const-string v2, "setSsidPostfix"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-object v0

    .line 773
    :cond_1
    if-nez p1, :cond_2

    .line 774
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not connect: null config."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    monitor-exit v1

    return-object v0

    .line 778
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 779
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not parse null mac address."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    monitor-exit v1

    return-object v0

    .line 783
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v2, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 784
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Expected empty pin for PBC."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 788
    :cond_4
    move-object v2, v0

    .line 790
    .local v2, "peerAddress":[B
    :try_start_1
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    .end local v2    # "peerAddress":[B
    .local v5, "peerAddress":[B
    nop

    .line 796
    :try_start_2
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->wpsInfoToConfigMethod(I)I

    move-result v2

    .line 797
    .local v2, "provisionMethod":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 798
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid WPS config method: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v6, v6, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    monitor-exit v1

    return-object v0

    .line 802
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_6
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0

    .line 803
    .local v7, "preSelectedPin":Ljava/lang/String;
    :goto_1
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v4

    .line 805
    .local v0, "persistent":Z
    :goto_2
    const/4 v3, 0x0

    .line 806
    .local v3, "goIntent":I
    if-nez p2, :cond_a

    .line 807
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 808
    .local v6, "groupOwnerIntent":I
    if-ltz v6, :cond_8

    const/16 v8, 0xf

    if-le v6, v8, :cond_9

    .line 809
    :cond_8
    const/4 v6, 0x6

    .line 811
    :cond_9
    move v3, v6

    .line 815
    .end local v6    # "groupOwnerIntent":I
    :cond_a
    const-string v6, "persist.sys.wfd.wfdconnection"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 816
    const/4 v0, 0x0

    .line 820
    :cond_b
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v4

    .line 823
    .local v12, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v11, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$cZS-3bDskhEdL9pvSQ9NTW85EOo;

    invoke-direct {v11, v12}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$cZS-3bDskhEdL9pvSQ9NTW85EOo;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    move v6, v2

    move v8, p2

    move v9, v0

    move v10, v3

    invoke-interface/range {v4 .. v11}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 832
    goto :goto_3

    .line 829
    :catch_0
    move-exception v4

    .line 830
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 833
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit v1

    return-object v4

    .line 791
    .end local v0    # "persistent":Z
    .end local v3    # "goIntent":I
    .end local v5    # "peerAddress":[B
    .end local v7    # "preSelectedPin":Ljava/lang/String;
    .end local v12    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    .local v2, "peerAddress":[B
    :catch_1
    move-exception v3

    .line 792
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse peer mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    monitor-exit v1

    return-object v0

    .line 834
    .end local v2    # "peerAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public enableWfd(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 1791
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1792
    :try_start_0
    const-string v1, "enableWfd"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1794
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWfd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1801
    goto :goto_0

    .line 1798
    :catch_0
    move-exception v2

    .line 1799
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1803
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1804
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public find(I)Z
    .locals 6
    .param p1, "timeout"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    const-string v1, "find"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 586
    :cond_0
    if-gez p1, :cond_1

    .line 587
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid timeout value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit v0

    return v2

    .line 590
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    goto :goto_0

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 597
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 598
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()Z
    .locals 6

    .line 628
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    const-string v1, "flush"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 630
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "flush()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    goto :goto_0

    .line 633
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 637
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 638
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getClientList(I)Ljava/lang/String;
    .locals 8
    .param p1, "networkId"    # I

    .line 2260
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2261
    :try_start_0
    const-string v1, "getClientList"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2262
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v1

    .line 2263
    .local v1, "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    if-nez v1, :cond_1

    .line 2264
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid network id "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    monitor-exit v0

    return-object v2

    .line 2267
    :cond_1
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClientList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$bXMI596Kq7T2WYp5S1uvxkboxxk;

    invoke-direct {v4, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$bXMI596Kq7T2WYp5S1uvxkboxxk;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getClientList(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2277
    goto :goto_0

    .line 2274
    :catch_0
    move-exception v4

    .line 2275
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2278
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2279
    monitor-exit v0

    return-object v2

    .line 2281
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2282
    .local v2, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/p2p/-$$Lambda$22Qhg7RQJlX-ihi83tqGgsfF-Ms;->INSTANCE:Lcom/android/server/wifi/p2p/-$$Lambda$22Qhg7RQJlX-ihi83tqGgsfF-Ms;

    .line 2283
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, " "

    .line 2284
    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    .line 2282
    return-object v4

    .line 2285
    .end local v1    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 7

    .line 1030
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    const-string v1, "getDeviceAddress"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1032
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getDeviceAddress()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$WkGSeTaZoJDTkSe2fqKEjLQpWuk;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$WkGSeTaZoJDTkSe2fqKEjLQpWuk;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    nop

    .line 1049
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1043
    :catch_0
    move-exception v3

    .line 1044
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1046
    monitor-exit v0

    return-object v2

    .line 1050
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 8
    .param p1, "peerAddress"    # Ljava/lang/String;

    .line 1215
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_0
    const-string v1, "getGroupCapability"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1217
    monitor-exit v0

    return v2

    .line 1220
    :cond_0
    if-nez p1, :cond_1

    .line 1221
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1224
    :cond_1
    const/4 v1, 0x0

    .line 1226
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1230
    nop

    .line 1232
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupCapability("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1235
    .local v3, "capability":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$fAd_Ie2bVgQhtfKKOMlJdzPJyMU;

    invoke-direct {v5, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$fAd_Ie2bVgQhtfKKOMlJdzPJyMU;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1242
    goto :goto_0

    .line 1239
    :catch_0
    move-exception v4

    .line 1240
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1244
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1245
    monitor-exit v0

    return v2

    .line 1248
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 1227
    .end local v3    # "capability":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v3

    .line 1228
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse group address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    monitor-exit v0

    return v2

    .line 1249
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    .line 529
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    const-string v1, "getName"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 531
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "getName()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v3, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$qdAVPJtKWPe5tcjcdhPA5D2APmU;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$qdAVPJtKWPe5tcjcdhPA5D2APmU;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 542
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 543
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 7

    .line 2113
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_0
    const-string v1, "getNfcHandoverRequest"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2115
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getNfcHandoverRequest()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$E4Spq_q7PRsXiNIycR53oa-9H68;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$E4Spq_q7PRsXiNIycR53oa-9H68;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2125
    goto :goto_0

    .line 2122
    :catch_0
    move-exception v3

    .line 2123
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2126
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2127
    monitor-exit v0

    return-object v2

    .line 2130
    :cond_1
    nop

    .line 2131
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 2130
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2132
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 7

    .line 2141
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2142
    :try_start_0
    const-string v1, "getNfcHandoverSelect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2143
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getNfcHandoverSelect()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$ek6pjXj3dGTF-HTMzJ4YwbyD3Dc;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$ek6pjXj3dGTF-HTMzJ4YwbyD3Dc;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2153
    goto :goto_0

    .line 2150
    :catch_0
    move-exception v3

    .line 2151
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2154
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2155
    monitor-exit v0

    return-object v2

    .line 2158
    :cond_1
    nop

    .line 2159
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 2158
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2160
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getP2pIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
    .locals 1
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 456
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    move-result-object v0

    return-object v0
.end method

.method protected getP2pNetworkMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .locals 1
    .param p1, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 460
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_0
    const-string v1, "getSsid"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1065
    :cond_0
    if-nez p1, :cond_1

    .line 1066
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1069
    :cond_1
    move-object v1, v2

    .line 1071
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1075
    nop

    .line 1077
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSsid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1080
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$kpewDgmpbiuLCclRVxVxZiaoom8;

    invoke-direct {v5, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$kpewDgmpbiuLCclRVxVxZiaoom8;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1097
    nop

    .line 1099
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1093
    :catch_0
    move-exception v4

    .line 1094
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1096
    monitor-exit v0

    return-object v2

    .line 1072
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1073
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    monitor-exit v0

    return-object v2

    .line 1100
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method protected getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v2, "Failed to get ISupplicant"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1

    .line 446
    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 452
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 452
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public groupAdd(IZ)Z
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "isPersistent"    # Z

    .line 1153
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    const-string v1, "groupAdd"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1155
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupAdd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    goto :goto_0

    .line 1159
    :catch_0
    move-exception v2

    .line 1160
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1163
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1164
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public groupAdd(Z)Z
    .locals 1
    .param p1, "isPersistent"    # Z

    .line 1177
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(IZ)Z

    move-result v0

    return v0
.end method

.method public groupRemove(Ljava/lang/String;)Z
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;

    .line 1191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1193
    :try_start_0
    const-string v2, "groupRemove"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 1194
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupRemove("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    goto :goto_0

    .line 1197
    :catch_0
    move-exception v2

    .line 1198
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1201
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1202
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public initialize()Z
    .locals 8

    .line 147
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v1, "Registering ISupplicant service ready callback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Supplicant HAL already initialized."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v0

    return v2

    .line 155
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 156
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 159
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_1

    .line 160
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v2, "Failed to get HIDL Service Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 163
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_2

    .line 164
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    .line 168
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string v6, ""

    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 170
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v4, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    :try_start_6
    monitor-exit v0

    return v3

    .line 178
    :cond_3
    monitor-exit v0

    return v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v3

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 7
    .param p1, "selectMessage"    # Ljava/lang/String;

    .line 2169
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2170
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2171
    :try_start_0
    const-string v2, "initiatorReportNfcHandover"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 2172
    :cond_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiatorReportNfcHandover("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 2176
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 2175
    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2184
    :goto_0
    goto :goto_1

    .line 2181
    :catch_0
    move-exception v3

    .line 2182
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2183
    monitor-exit v1

    return v0

    .line 2178
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2185
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2186
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public invite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 8
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .line 930
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_0
    const-string v2, "invite"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 933
    :cond_1
    if-nez p1, :cond_2

    .line 934
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot invite to null group."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    monitor-exit v0

    return v1

    .line 938
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-nez v2, :cond_3

    .line 939
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot invite to group with null owner."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    monitor-exit v0

    return v1

    .line 943
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 944
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Group owner has no mac address."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 948
    :cond_4
    const/4 v2, 0x0

    .line 950
    .local v2, "ownerMacAddress":[B
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 954
    nop

    .line 956
    if-nez p2, :cond_5

    .line 957
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Cannot parse peer mac address."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 963
    :cond_5
    :try_start_3
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v3

    .line 967
    .local v1, "peerMacAddress":[B
    nop

    .line 966
    nop

    .line 969
    :try_start_4
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invite("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 973
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 974
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    .line 973
    invoke-interface {v4, v5, v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 978
    goto :goto_0

    .line 975
    :catch_0
    move-exception v4

    .line 976
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 979
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    monitor-exit v0

    return v4

    .line 964
    .end local v1    # "peerMacAddress":[B
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 965
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Peer mac address parse error."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    monitor-exit v0

    return v1

    .line 951
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 952
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Group owner mac address parse error."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 953
    monitor-exit v0

    return v1

    .line 980
    .end local v2    # "ownerMacAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitializationStarted()Z
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadGroups(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 14
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 1925
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1926
    :try_start_0
    const-string v1, "loadGroups"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1927
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->listNetworks()Ljava/util/List;

    move-result-object v1

    .line 1928
    .local v1, "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    .line 1931
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1932
    .local v3, "networkId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v4

    .line 1933
    .local v4, "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    if-nez v4, :cond_2

    .line 1934
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve network object for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    goto :goto_0

    .line 1937
    :cond_2
    new-instance v5, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCurrent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    .local v5, "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    :try_start_1
    new-instance v6, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$DZ5hjM0K-k-jbWASpzD6nJ3e6xU;

    invoke-direct {v6, v5}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$DZ5hjM0K-k-jbWASpzD6nJ3e6xU;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->isCurrent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isCurrentCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1947
    goto :goto_1

    .line 1944
    :catch_0
    move-exception v6

    .line 1945
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1950
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    .line 1955
    :cond_3
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 1956
    .local v6, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 1959
    new-instance v7, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSsid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1962
    .local v7, "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$JzKiJ4oLypdiaI_2kjk3anuHsPQ;

    invoke-direct {v8, v7}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$JzKiJ4oLypdiaI_2kjk3anuHsPQ;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getSsidCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1969
    goto :goto_2

    .line 1966
    :catch_1
    move-exception v8

    .line 1967
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "SupplicantP2pIfaceHal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ISupplicantP2pIface exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1970
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1971
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1972
    nop

    .line 1973
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 1972
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 1979
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBssid("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1982
    .local v8, "resultBssid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<[B>;"
    :try_start_5
    new-instance v9, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$dFKn5oY7OFr4d91vo-vY6YUffTI;

    invoke-direct {v9, v8}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$dFKn5oY7OFr4d91vo-vY6YUffTI;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v9}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getBssidCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1989
    goto :goto_3

    .line 1986
    :catch_2
    move-exception v9

    .line 1987
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v10, "SupplicantP2pIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ISupplicantP2pIface exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1990
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1991
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1992
    .local v9, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    nop

    .line 1993
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1994
    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1997
    .end local v9    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    new-instance v9, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGo("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2000
    .local v9, "resultIsGo":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    :try_start_7
    new-instance v10, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$NNtqsQiP2_K4VCIPid6vvSLYwJg;

    invoke-direct {v10, v9}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$NNtqsQiP2_K4VCIPid6vvSLYwJg;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->isGo(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isGoCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2007
    goto :goto_4

    .line 2004
    :catch_3
    move-exception v10

    .line 2005
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v11, "SupplicantP2pIfaceHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ISupplicantP2pIface exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2008
    .end local v10    # "e":Landroid/os/RemoteException;
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2009
    invoke-virtual {v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 2011
    :cond_5
    invoke-virtual {p1, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 2012
    .end local v3    # "networkId":Ljava/lang/Integer;
    .end local v4    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v5    # "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    .end local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v7    # "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    .end local v8    # "resultBssid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<[B>;"
    .end local v9    # "resultIsGo":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    goto/16 :goto_0

    .line 1975
    .restart local v3    # "networkId":Ljava/lang/Integer;
    .restart local v4    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .restart local v5    # "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    .restart local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v7    # "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :cond_6
    const-string v8, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "group ssid is invalid! resultSsid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    goto/16 :goto_0

    .line 1951
    .end local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v7    # "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :cond_7
    :goto_5
    const-string v6, "SupplicantP2pIfaceHal"

    const-string v7, "Skipping current network"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    goto/16 :goto_0

    .line 2013
    .end local v1    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "networkId":Ljava/lang/Integer;
    .end local v4    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v5    # "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    :cond_8
    monitor-exit v0

    .line 2014
    const/4 v0, 0x1

    return v0

    .line 1929
    .restart local v1    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    :goto_6
    monitor-exit v0

    return v2

    .line 2013
    .end local v1    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public provisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 873
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_0
    const-string v2, "provisionDiscovery"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 877
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->wpsInfoToConfigMethod(I)I

    move-result v2

    .line 878
    .local v2, "targetMethod":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 879
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized WPS configuration method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    monitor-exit v1

    return v0

    .line 882
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 884
    const/4 v2, 0x2

    goto :goto_0

    .line 885
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 887
    const/4 v2, 0x1

    .line 890
    :cond_4
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 891
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Cannot parse null mac address."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 894
    :cond_5
    const/4 v3, 0x0

    .line 896
    .local v3, "macAddress":[B
    :try_start_1
    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 900
    .end local v3    # "macAddress":[B
    .local v0, "macAddress":[B
    nop

    .line 902
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provisionDiscovery("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 909
    goto :goto_1

    .line 906
    :catch_0
    move-exception v4

    .line 907
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 911
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    monitor-exit v1

    return v4

    .line 897
    .end local v0    # "macAddress":[B
    .local v3, "macAddress":[B
    :catch_1
    move-exception v4

    .line 898
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SupplicantP2pIfaceHal"

    const-string v6, "Could not parse peer mac address."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    monitor-exit v1

    return v0

    .line 912
    .end local v2    # "targetMethod":I
    .end local v3    # "macAddress":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z
    .locals 6
    .param p1, "receiver"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 560
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    const-string v1, "registerCallback"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 562
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "registerCallback()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    goto :goto_0

    .line 565
    :catch_0
    move-exception v2

    .line 566
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 569
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 570
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reinvoke(ILjava/lang/String;)Z
    .locals 7
    .param p1, "networkId"    # I
    .param p2, "peerAddress"    # Ljava/lang/String;

    .line 1113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-gez p1, :cond_0

    goto/16 :goto_1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_0
    const-string v2, "reinvoke"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 1116
    :cond_1
    if-nez p2, :cond_2

    .line 1117
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1120
    :cond_2
    const/4 v2, 0x0

    .line 1122
    .local v2, "macAddress":[B
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1126
    .end local v2    # "macAddress":[B
    .local v1, "macAddress":[B
    nop

    .line 1128
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reinvoke("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1131
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, p1, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1135
    goto :goto_0

    .line 1132
    :catch_0
    move-exception v3

    .line 1133
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1137
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1123
    .end local v1    # "macAddress":[B
    .local v2, "macAddress":[B
    :catch_1
    move-exception v3

    .line 1124
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    monitor-exit v0

    return v1

    .line 1138
    .end local v2    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 1113
    :cond_3
    :goto_1
    return v1
.end method

.method public reject(Ljava/lang/String;)Z
    .locals 7
    .param p1, "peerAddress"    # Ljava/lang/String;

    .line 995
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    const-string v1, "reject"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 998
    :cond_0
    if-nez p1, :cond_1

    .line 999
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse rejected peer\'s mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1002
    :cond_1
    const/4 v1, 0x0

    .line 1004
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1008
    nop

    .line 1010
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1017
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v3

    .line 1015
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1019
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1005
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 1006
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse peer mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    monitor-exit v0

    return v2

    .line 1020
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 6
    .param p1, "networkId"    # I

    .line 1851
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    :try_start_0
    const-string v1, "removeNetwork"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1854
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1861
    goto :goto_0

    .line 1858
    :catch_0
    move-exception v2

    .line 1859
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1863
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1864
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestServiceDiscovery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "peerAddress"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .line 1522
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_start_0
    const-string v1, "requestServiceDiscovery"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1525
    :cond_0
    if-nez p1, :cond_1

    .line 1526
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1529
    :cond_1
    move-object v1, v2

    .line 1531
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1535
    nop

    .line 1537
    if-nez p2, :cond_2

    .line 1538
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse service discovery query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 1541
    :cond_2
    move-object v3, v2

    .line 1543
    .local v3, "binQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_3
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    .line 1547
    nop

    .line 1549
    :try_start_4
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestServiceDiscovery("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1552
    .local v4, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Long;>;"
    :try_start_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v6, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$izMglHV1zYg-bjEUsC4ooS9V9rc;

    invoke-direct {v6, v4}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$izMglHV1zYg-bjEUsC4ooS9V9rc;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v5, v1, v3, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1560
    goto :goto_0

    .line 1557
    :catch_0
    move-exception v5

    .line 1558
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISupplicantP2pIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1562
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1563
    .local v5, "value":Ljava/lang/Long;
    if-nez v5, :cond_3

    monitor-exit v0

    return-object v2

    .line 1564
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1544
    .end local v4    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Long;>;"
    .end local v5    # "value":Ljava/lang/Long;
    :catch_1
    move-exception v4

    .line 1545
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SupplicantP2pIfaceHal"

    const-string v6, "Could not parse service query."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    monitor-exit v0

    return-object v2

    .line 1532
    .end local v3    # "binQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 1533
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not process peer MAC address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    monitor-exit v0

    return-object v2

    .line 1565
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 7
    .param p1, "requestMessage"    # Ljava/lang/String;

    .line 2195
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2196
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2197
    :try_start_0
    const-string v2, "responderReportNfcHandover"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 2198
    :cond_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responderReportNfcHandover("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 2202
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 2201
    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2210
    :goto_0
    goto :goto_1

    .line 2207
    :catch_0
    move-exception v3

    .line 2208
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    monitor-exit v1

    return v0

    .line 2204
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2211
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2212
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public saveConfig()Z
    .locals 6

    .line 2294
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2295
    :try_start_0
    const-string v1, "saveConfig"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2296
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "saveConfig()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2302
    goto :goto_0

    .line 2299
    :catch_0
    move-exception v2

    .line 2300
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2303
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2304
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public serviceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 13
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1371
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1372
    :try_start_0
    const-string v1, "serviceAdd"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1374
    :cond_0
    if-nez p1, :cond_1

    .line 1375
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Null service info passed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    monitor-exit v0

    return v2

    .line 1379
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1380
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1381
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid service description (null)."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    monitor-exit v0

    return v2

    .line 1385
    :cond_2
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1386
    .local v5, "data":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1387
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service specification invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1391
    :cond_3
    const/4 v6, 0x0

    move-object v7, v6

    .line 1393
    .local v7, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    const-string v8, "upnp"

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    .line 1394
    move v6, v2

    .line 1396
    .local v6, "version":I
    :try_start_2
    aget-object v8, v5, v4

    const/16 v10, 0x10

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    .line 1400
    nop

    .line 1402
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addUpnpService("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v9

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1404
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    aget-object v8, v5, v9

    invoke-interface {v4, v6, v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1405
    .end local v6    # "version":I
    goto/16 :goto_1

    .line 1397
    .restart local v6    # "version":I
    :catch_0
    move-exception v4

    .line 1398
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPnP Service specification invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1399
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1405
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "version":I
    :cond_4
    :try_start_5
    const-string v8, "bonjour"

    aget-object v10, v5, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1406
    aget-object v8, v5, v4

    if-eqz v8, :cond_5

    aget-object v8, v5, v9
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_5

    .line 1407
    const/4 v8, 0x0

    .line 1408
    .local v8, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    nop

    .line 1410
    .local v6, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_6
    aget-object v10, v5, v4

    .line 1411
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 1410
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v10

    move-object v8, v10

    .line 1412
    aget-object v10, v5, v9

    .line 1413
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 1412
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v10

    .line 1417
    nop

    .line 1418
    :try_start_7
    new-instance v10, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addBonjourService("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    .line 1420
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 1421
    invoke-interface {v4, v8, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1420
    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1422
    .end local v6    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_1

    .line 1414
    .restart local v6    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v8    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_1
    move-exception v4

    .line 1415
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "SupplicantP2pIfaceHal"

    const-string v10, "Invalid bonjour service description."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1416
    :try_start_8
    monitor-exit v0

    return v2

    .line 1429
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_5
    :goto_1
    goto :goto_2

    .line 1424
    :cond_6
    monitor-exit v0

    return v2

    .line 1426
    :catch_2
    move-exception v4

    .line 1427
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1431
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 1432
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_7
    goto/16 :goto_0

    .line 1431
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v5    # "data":[Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_8
    :goto_3
    monitor-exit v0

    return v2

    .line 1434
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_9
    monitor-exit v0

    return v4

    .line 1435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public serviceFlush()Z
    .locals 6

    .line 649
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    const-string v1, "serviceFlush"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 651
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "serviceFlush()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    goto :goto_0

    .line 654
    :catch_0
    move-exception v2

    .line 655
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 658
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 659
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public serviceRemove(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 11
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1447
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1448
    :try_start_0
    const-string v1, "serviceRemove"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1450
    :cond_0
    if-nez p1, :cond_1

    .line 1451
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Null service info passed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    monitor-exit v0

    return v2

    .line 1455
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1456
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1457
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid service description (null)."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    monitor-exit v0

    return v2

    .line 1461
    :cond_2
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1462
    .local v5, "data":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1463
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service specification invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1467
    :cond_3
    const/4 v6, 0x0

    move-object v7, v6

    .line 1469
    .local v7, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    const-string v8, "upnp"

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    .line 1470
    move v6, v2

    .line 1472
    .local v6, "version":I
    :try_start_2
    aget-object v8, v5, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    .line 1476
    nop

    .line 1477
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeUpnpService("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v10, v5, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1479
    iget-object v8, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    aget-object v4, v5, v4

    invoke-interface {v8, v6, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1480
    .end local v6    # "version":I
    goto :goto_1

    .line 1473
    .restart local v6    # "version":I
    :catch_0
    move-exception v4

    .line 1474
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPnP Service specification invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1475
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1480
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "version":I
    :cond_4
    :try_start_5
    const-string v8, "bonjour"

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1481
    aget-object v8, v5, v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_5

    .line 1482
    nop

    .line 1484
    .local v6, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_6
    aget-object v8, v5, v4

    .line 1485
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 1484
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v8

    .line 1489
    nop

    .line 1490
    :try_start_7
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeBonjourService("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1491
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1492
    .end local v6    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_1

    .line 1486
    .restart local v6    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_1
    move-exception v4

    .line 1487
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "SupplicantP2pIfaceHal"

    const-string v9, "Invalid bonjour service description."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1488
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return v2

    .line 1500
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_5
    :goto_1
    goto :goto_2

    .line 1494
    :cond_6
    :try_start_9
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown / unsupported P2P service requested: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1495
    :try_start_a
    monitor-exit v0

    return v2

    .line 1497
    :catch_2
    move-exception v4

    .line 1498
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1502
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 1503
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_7
    goto/16 :goto_0

    .line 1502
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v5    # "data":[Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_8
    :goto_3
    monitor-exit v0

    return v2

    .line 1505
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_9
    monitor-exit v0

    return v4

    .line 1506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1
.end method

.method public setClientList(ILjava/lang/String;)Z
    .locals 8
    .param p1, "networkId"    # I
    .param p2, "clientListStr"    # Ljava/lang/String;

    .line 2223
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    :try_start_0
    const-string v1, "setClientList"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2225
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2226
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Invalid client list"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    monitor-exit v0

    return v2

    .line 2229
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v1

    .line 2230
    .local v1, "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    if-nez v1, :cond_2

    .line 2231
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid network id "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    monitor-exit v0

    return v2

    .line 2234
    :cond_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClientList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2238
    .local v4, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v5, "\\s+"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2239
    .local v6, "clientStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    .end local v6    # "clientStr":Ljava/lang/String;
    goto :goto_0

    .line 2241
    :cond_3
    invoke-interface {v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->setClientList(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_1

    .line 2245
    :catch_0
    move-exception v4

    .line 2246
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal argument "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2247
    monitor-exit v0

    return v2

    .line 2242
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 2243
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2248
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 2249
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2250
    .end local v1    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setGroupIdle(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "timeoutInSec"    # I

    .line 700
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    const-string v1, "setGroupIdle"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 703
    :cond_0
    if-gez p2, :cond_1

    .line 704
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid group timeout value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    monitor-exit v0

    return v2

    .line 708
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGroupIdle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    goto :goto_0

    .line 712
    :catch_0
    move-exception v2

    .line 713
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 716
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 717
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setListenChannel(II)Z
    .locals 8
    .param p1, "listenChannel"    # I
    .param p2, "operatingChannel"    # I

    .line 1313
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    const-string v1, "setListenChannel"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1316
    :cond_0
    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v3, 0xb

    if-gt p1, v3, :cond_2

    .line 1317
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setListenChannel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, p1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    goto :goto_0

    .line 1322
    :catch_0
    move-exception v4

    .line 1323
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1326
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1327
    monitor-exit v0

    return v2

    .line 1329
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_1
    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1331
    monitor-exit v0

    return v2

    .line 1334
    :cond_3
    :goto_1
    if-ltz p2, :cond_6

    const/16 v3, 0xa5

    if-gt p2, v3, :cond_6

    .line 1335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v2, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    if-lt p2, v1, :cond_5

    if-gt p2, v3, :cond_5

    .line 1338
    const/16 v1, 0xe

    if-gt p2, v1, :cond_4

    const/16 v1, 0x967

    goto :goto_2

    :cond_4
    const/16 v1, 0x1388

    :goto_2
    mul-int/lit8 v3, p2, 0x5

    add-int/2addr v1, v3

    .line 1339
    .local v1, "freq":I
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    .line 1340
    .local v3, "range1":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    const/16 v4, 0x3e8

    iput v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    .line 1341
    add-int/lit8 v4, v1, -0x5

    iput v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    .line 1342
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    .line 1343
    .local v4, "range2":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    add-int/lit8 v5, v1, 0x5

    iput v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    .line 1344
    const/16 v5, 0x1770

    iput v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    .line 1345
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    .end local v1    # "freq":I
    .end local v3    # "range1":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    .end local v4    # "range2":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    :cond_5
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisallowedFrequencies("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1351
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1355
    goto :goto_3

    .line 1352
    :catch_1
    move-exception v3

    .line 1353
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1356
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1358
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    .end local v2    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    :cond_6
    monitor-exit v0

    return v2

    .line 1359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setMiracastMode(I)Z
    .locals 7
    .param p1, "mode"    # I

    .line 1612
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1613
    :try_start_0
    const-string v1, "setMiracastMode"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1614
    :cond_0
    const/4 v1, 0x0

    .line 1616
    .local v1, "targetMode":B
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1622
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 1618
    :pswitch_1
    const/4 v1, 0x1

    .line 1619
    nop

    .line 1626
    :goto_0
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMiracastMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    goto :goto_1

    .line 1630
    :catch_0
    move-exception v3

    .line 1631
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1635
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1636
    .end local v1    # "targetMode":B
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 672
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    const-string v1, "setPowerSave"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 674
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSave("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    goto :goto_0

    .line 678
    :catch_0
    move-exception v2

    .line 679
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 682
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 683
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSsidPostfix(Ljava/lang/String;)Z
    .locals 6
    .param p1, "postfix"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    const-string v1, "setSsidPostfix"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 732
    :cond_0
    if-nez p1, :cond_1

    .line 733
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Invalid SSID postfix value (null)."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    monitor-exit v0

    return v2

    .line 737
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSsidPostfix("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 739
    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not decode SSID."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    monitor-exit v0

    return v2

    .line 741
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 742
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 747
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 749
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 750
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .line 1816
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1817
    :try_start_0
    const-string v1, "setWfdDeviceInfo"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1819
    :cond_0
    if-nez p1, :cond_1

    .line 1820
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse null WFD info string."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1823
    :cond_1
    const/4 v1, 0x0

    .line 1825
    .local v1, "wfdInfo":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1829
    nop

    .line 1831
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWfdDeviceInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1834
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1838
    goto :goto_0

    .line 1835
    :catch_0
    move-exception v3

    .line 1836
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1840
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1826
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 1827
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse WFD Device Info string."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    monitor-exit v0

    return v2

    .line 1841
    .end local v1    # "wfdInfo":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setWpsConfigMethods(Ljava/lang/String;)Z
    .locals 8
    .param p1, "configMethodsStr"    # Ljava/lang/String;

    .line 2088
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2089
    :try_start_0
    const-string v1, "setWpsConfigMethods"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2090
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWpsConfigMethods("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 2092
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 2093
    .local v3, "configMethodsMask":S
    const-string v4, "\\s+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2094
    .local v4, "configMethodsStrArr":[Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2095
    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->stringToWpsConfigMethod(Ljava/lang/String;)S

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v5, v3

    int-to-short v3, v5

    .line 2094
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2098
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    goto :goto_1

    .line 2099
    :catch_0
    move-exception v2

    .line 2100
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2103
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2104
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    .end local v3    # "configMethodsMask":S
    .end local v4    # "configMethodsStrArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 2024
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2025
    return v0

    .line 2027
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2028
    :try_start_0
    const-string v2, "setWpsDeviceName"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 2029
    :cond_1
    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWpsDeviceName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    .local v0, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2036
    goto :goto_0

    .line 2033
    :catch_0
    move-exception v2

    .line 2034
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2037
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v1

    return v2

    .line 2038
    .end local v0    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setWpsDeviceType(Ljava/lang/String;)Z
    .locals 13
    .param p1, "typeStr"    # Ljava/lang/String;

    .line 2049
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2050
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 2054
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 2055
    .local v2, "categ":S
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 2056
    .local v4, "oui":[B
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 2058
    .local v3, "subCateg":S
    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 2059
    .local v5, "bytes":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2060
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2061
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2062
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2063
    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2064
    :try_start_1
    const-string v8, "setWpsDeviceType"

    invoke-direct {p0, v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    monitor-exit v7

    return v0

    .line 2065
    :cond_1
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWpsDeviceType("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2068
    .local v8, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_2
    iget-object v9, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v9, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2072
    goto :goto_0

    .line 2069
    :catch_0
    move-exception v9

    .line 2070
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v10, "SupplicantP2pIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ISupplicantP2pIface exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2073
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v9

    monitor-exit v7

    return v9

    .line 2074
    .end local v8    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8

    .line 2051
    .end local v2    # "categ":S
    .end local v3    # "subCateg":S
    .end local v4    # "oui":[B
    .end local v5    # "bytes":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_1
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed WPS device type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2052
    return v0

    .line 2075
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v1

    .line 2076
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2077
    return v0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isV1_1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v1

    .local v1, "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    goto :goto_0

    .line 250
    .end local v1    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v1

    .line 252
    .restart local v1    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :goto_0
    if-nez v1, :cond_2

    .line 253
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "initSupplicantP2pIface got null iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-exit v0

    return v2

    .line 256
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getP2pIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 257
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantP2pIfaceDeath()Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    monitor-exit v0

    return v2

    .line 260
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    if-eqz v3, :cond_4

    .line 261
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;-><init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    .line 262
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 263
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Callback registration failed. Initialization incomplete."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    monitor-exit v0

    return v2

    .line 267
    :cond_4
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 268
    .end local v1    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1651
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group name required when requesting WPS PBC. Got ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    return v1

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1655
    :try_start_0
    const-string v2, "startWpsPbc"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1657
    :cond_1
    const/4 v2, 0x0

    .line 1659
    .local v2, "macAddress":[B
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1663
    .end local v2    # "macAddress":[B
    .local v1, "macAddress":[B
    nop

    .line 1665
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWpsPbc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1668
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, p1, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1672
    goto :goto_0

    .line 1669
    :catch_0
    move-exception v3

    .line 1670
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1674
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1660
    .end local v1    # "macAddress":[B
    .local v2, "macAddress":[B
    :catch_1
    move-exception v3

    .line 1661
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse BSSID."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    monitor-exit v0

    return v1

    .line 1675
    .end local v2    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1721
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1723
    :try_start_0
    const-string v2, "startWpsPinDisplay"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    .line 1724
    :cond_1
    if-nez p1, :cond_2

    .line 1725
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Group name required when requesting WPS KEYPAD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1730
    :cond_2
    move-object v2, v1

    .line 1732
    .local v2, "macAddress":[B
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1736
    .end local v2    # "macAddress":[B
    .local v1, "macAddress":[B
    nop

    .line 1738
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWpsPinDisplay("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1741
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FjqymoOlHfh38YnKZwagVaL8Jog;

    invoke-direct {v4, v2}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FjqymoOlHfh38YnKZwagVaL8Jog;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, p1, v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1749
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v3

    .line 1747
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1751
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 1733
    .end local v1    # "macAddress":[B
    .local v2, "macAddress":[B
    :catch_1
    move-exception v3

    .line 1734
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse BSSID."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1735
    monitor-exit v0

    return-object v1

    .line 1752
    .end local v2    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 1687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1689
    :try_start_0
    const-string v2, "startWpsPinKeypad"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 1690
    :cond_1
    if-nez p1, :cond_2

    .line 1691
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Group name required when requesting WPS KEYPAD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    monitor-exit v0

    return v1

    .line 1694
    :cond_2
    if-nez p2, :cond_3

    .line 1695
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "PIN required when requesting WPS KEYPAD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    monitor-exit v0

    return v1

    .line 1699
    :cond_3
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWpsPinKeypad("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1706
    goto :goto_0

    .line 1703
    :catch_0
    move-exception v2

    .line 1704
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1708
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1709
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1687
    :cond_4
    :goto_1
    return v1
.end method

.method public stopFind()Z
    .locals 6

    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    const-string v1, "stopFind"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 610
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "stopFind()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    goto :goto_0

    .line 613
    :catch_0
    move-exception v2

    .line 614
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 617
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 618
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isV1_1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->removeIfaceV1_1(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 364
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
