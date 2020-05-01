.class public Lcom/android/server/wifi/SupplicantStaIfaceHal;
.super Ljava/lang/Object;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupplicantStaIfaceHal"

.field private static final WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkLocalConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkRemoteHandles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/SupplicantStaNetworkHal;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicantStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

.field private mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicantVendorStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private mStateIsFourway:Z

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$"

    .line 112
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monitor"    # Lcom/android/server/wifi/WifiMonitor;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    .line 135
    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mStateIsFourway:Z

    .line 138
    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal$1;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 155
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 163
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$MsPuzKcT4xAfuigKAAOs1rYm9CU;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$MsPuzKcT4xAfuigKAAOs1rYm9CU;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 171
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$0ZCupb06_ol_oER89JKkser7esc;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$0ZCupb06_ol_oER89JKkser7esc;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 180
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initSupplicantService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(I)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mStateIsFourway:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/SupplicantStaIfaceHal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mStateIsFourway:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 584
    .local v1, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 585
    const/4 v2, 0x0

    iput v2, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 586
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .local v2, "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;

    invoke-direct {v4, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, v1, v4}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->addInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    nop

    .line 602
    :try_start_2
    iget-object v3, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object v3

    .line 597
    :catch_0
    move-exception v3

    .line 598
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicant.addInterface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v4, "addInterface"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 600
    const/4 v4, 0x0

    monitor-exit v0

    return-object v4

    .line 603
    .end local v1    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v2    # "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addNetwork(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1290
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_0
    const-string v1, "addNetwork"

    .line 1292
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "addNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1293
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    .line 1294
    :cond_0
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    .local v4, "newNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$SAhW2awoE8NJ68XrUoFFWBy8_Qs;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$SAhW2awoE8NJ68XrUoFFWBy8_Qs;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    goto :goto_0

    .line 1302
    :catch_0
    move-exception v5

    .line 1303
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "addNetwork"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1305
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1307
    iget-object v3, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1309
    invoke-interface {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    move-result-object v3

    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1310
    invoke-interface {v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    invoke-static {v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v5

    .line 1307
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaNetworkMockable(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1316
    :cond_1
    monitor-exit v0

    return-object v3

    .line 1318
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "newNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addNetworkAndSaveConfig(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/SupplicantStaNetworkHal;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_0
    const-string v1, "addSupplicantStaNetwork via HIDL"

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logi(Ljava/lang/String;)V

    .line 898
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 899
    const-string v2, "Cannot add NULL network!"

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 900
    monitor-exit v0

    return-object v1

    .line 902
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addNetwork(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v2

    .line 903
    .local v2, "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v2, :cond_1

    .line 904
    const-string v3, "Failed to add a network!"

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 905
    monitor-exit v0

    return-object v1

    .line 907
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getId()Z

    .line 908
    nop

    .line 909
    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getNetworkId()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorNetwork(Ljava/lang/String;I)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v3

    .line 908
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorStaNetwork(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    const/4 v3, 0x0

    .line 912
    .local v3, "saveSuccess":Z
    :try_start_1
    invoke-virtual {v2, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 915
    goto :goto_0

    .line 913
    :catch_0
    move-exception v4

    .line 914
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v5, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while saving config params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-nez v3, :cond_3

    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save variables for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 919
    const-string v4, "Failed to remove all networks on failure."

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 921
    :cond_2
    monitor-exit v0

    return-object v1

    .line 923
    :cond_3
    new-instance v1, Landroid/util/Pair;

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, p2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 924
    .end local v2    # "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .end local v3    # "saveSuccess":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addRxFilter(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # B

    .line 2052
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_0
    const-string v1, "addRxFilter"

    .line 2054
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "addRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2055
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2057
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2058
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "addRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2059
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2060
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "addRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2061
    monitor-exit v0

    return v3

    .line 2063
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2643
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2644
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 2645
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2648
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2649
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 2570
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2571
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_0

    .line 2572
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicant is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2575
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2597
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2598
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v1

    .line 2599
    .local v1, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v1, :cond_0

    .line 2600
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ISupplicantStaIface is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2603
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2604
    .end local v1    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2627
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2628
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 2629
    .local v1, "networkHal":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    .line 2630
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", SupplicantStaNetwork is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2633
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2634
    .end local v1    # "networkHal":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 2583
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2584
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-nez v1, :cond_0

    .line 2585
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantVendor is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2588
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2612
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2613
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorStaIface(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v1

    .line 2614
    .local v1, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v1, :cond_0

    .line 2615
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ISupplicantVendorStaIface is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2618
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2619
    .end local v1    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2662
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2663
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 2664
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2667
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2668
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2672
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2681
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2682
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 2683
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2686
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2687
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearState()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 694
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 695
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 696
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 697
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 698
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 699
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentNetworkId(Ljava/lang/String;)I
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 359
    .local v1, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_0

    .line 360
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 362
    :cond_0
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    monitor-exit v0

    return v2

    .line 363
    .end local v1    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method private getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    return-object v0
.end method

.method private getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 10
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    const-string v1, "getIfaceV1_0"

    .line 531
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v2, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    const-string v3, "getIfaceV1_0"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 534
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$W95W86gqaF0yeVqSkcF8ivnWjzA;

    invoke-direct {v5, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$W95W86gqaF0yeVqSkcF8ivnWjzA;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    nop

    .line 547
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 548
    const-string v3, "SupplicantStaIfaceHal"

    const-string v5, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    monitor-exit v0

    return-object v4

    .line 551
    :cond_1
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 552
    .local v3, "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 553
    .local v6, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v7, v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    if-nez v7, :cond_2

    iget-object v7, v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 555
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v7, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$XREdKpo9EwOT4iuHOP2R4gyeoZ8;

    invoke-direct {v7, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$XREdKpo9EwOT4iuHOP2R4gyeoZ8;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6, v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    goto :goto_1

    .line 563
    :catch_0
    move-exception v5

    .line 564
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "SupplicantStaIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicant.getInterface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v7, "getInterface"

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 566
    monitor-exit v0

    return-object v4

    .line 570
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_2
    goto :goto_0

    .line 571
    :cond_3
    :goto_1
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object v4

    .line 542
    .end local v3    # "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    :catch_1
    move-exception v3

    .line 543
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v5, "listInterfaces"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 545
    monitor-exit v0

    return-object v4

    .line 572
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getNetwork(Ljava/lang/String;I)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1375
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1376
    :try_start_0
    const-string v1, "getNetwork"

    .line 1377
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1378
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    .line 1379
    :cond_0
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    .local v4, "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, p2, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1388
    goto :goto_0

    .line 1386
    :catch_0
    move-exception v5

    .line 1387
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "getNetwork"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1389
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1390
    iget-object v3, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1394
    invoke-interface {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    move-result-object v3

    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1395
    invoke-interface {v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    invoke-static {v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v5

    .line 1390
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaNetworkMockable(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1398
    :cond_1
    monitor-exit v0

    return-object v3

    .line 1400
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    return-object v0
.end method

.method private getVendorIfaceV2_0(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .local v1, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "listVendorInterfaces"

    .line 479
    .local v3, "methodStr":Ljava/lang/String;
    const-string v4, "listVendorInterfaces"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 480
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->listVendorInterfaces(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$listVendorInterfacesCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    .end local v3    # "methodStr":Ljava/lang/String;
    nop

    .line 492
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 493
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "Got zero HIDL supplicant vendor ifaces. Stopping supplicant vendor HIDL startup."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    monitor-exit v0

    return-object v2

    .line 496
    :cond_1
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 497
    .local v3, "supplicantVendorIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 498
    .local v5, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v6, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    if-nez v6, :cond_3

    iget-object v6, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_3

    .line 500
    :try_start_5
    const-string v4, "getVendorInterface"

    .line 501
    .local v4, "methodStr":Ljava/lang/String;
    const-string v6, "getVendorInterface"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v2

    .line 502
    :cond_2
    :try_start_7
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    new-instance v7, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$N3f9v3tZzzrucC85xo2Q_qG8kJg;

    invoke-direct {v7, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$N3f9v3tZzzrucC85xo2Q_qG8kJg;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v6, v5, v7}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->getVendorInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$getVendorInterfaceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 513
    .end local v4    # "methodStr":Ljava/lang/String;
    goto :goto_1

    .line 509
    :catch_0
    move-exception v4

    .line 510
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v6, "SupplicantStaIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISupplicantVendor.getInterface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V

    .line 512
    monitor-exit v0

    return-object v2

    .line 516
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_3
    goto :goto_0

    .line 517
    :cond_4
    :goto_1
    iget-object v2, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    monitor-exit v0

    return-object v2

    .line 487
    .end local v3    # "supplicantVendorIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;>;"
    :catch_1
    move-exception v3

    .line 488
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantVendor.listInterfaces exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V

    .line 490
    monitor-exit v0

    return-object v2

    .line 518
    .end local v1    # "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method private getVendorNetwork(Ljava/lang/String;I)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1408
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1409
    :try_start_0
    const-string v1, "getVendorNetwork"

    .line 1410
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getVendorNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 1411
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    .line 1412
    :cond_0
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    .local v4, "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;>;"
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$iuvFX4Bnum5LO3fXP4Qi-TebQaI;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$iuvFX4Bnum5LO3fXP4Qi-TebQaI;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, p2, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->getVendorNetwork(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface$getVendorNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1421
    goto :goto_0

    .line 1419
    :catch_0
    move-exception v5

    .line 1420
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "getVendorNetwork"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1422
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1423
    iget-object v3, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorStaNetworkMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1425
    :cond_1
    monitor-exit v0

    return-object v3

    .line 1427
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getVendorStaIface(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    return-object v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Landroid/os/RemoteException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2707
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2708
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->clearState()V

    .line 2709
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2710
    monitor-exit v0

    .line 2711
    return-void

    .line 2710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSupplicantService()Z
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    nop

    .line 302
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v2, :cond_0

    .line 303
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    monitor-exit v0

    return v1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    monitor-exit v0

    return v1

    .line 309
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initSupplicantVendorService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const-string v0, "SupplicantStaIfaceHal"

    const-string v1, "Failed to init SupplicantVendor service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 309
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v0

    return v1

    .line 309
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initSupplicantVendorService()Z
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 320
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-eqz v2, :cond_0

    .line 321
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Discover ISupplicantVendor service successfull"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    nop

    .line 327
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-nez v2, :cond_1

    .line 328
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Got null ISupplicantVendor service. Stopping supplicantVendor HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-exit v0

    return v1

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantVendorDeath()Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    monitor-exit v0

    return v1

    .line 335
    :cond_2
    monitor-exit v0

    .line 336
    const/4 v0, 0x1

    return v0

    .line 335
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit v0

    return v1

    .line 335
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initiateAnqpQuery(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1905
    .local p3, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .local p4, "subTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1906
    :try_start_0
    const-string v1, "initiateAnqpQuery"

    .line 1907
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateAnqpQuery"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1908
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1910
    :cond_0
    :try_start_1
    invoke-interface {v2, p2, p3, p4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1912
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateAnqpQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1913
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1914
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateAnqpQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1915
    monitor-exit v0

    return v3

    .line 1917
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .line 1943
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1944
    :try_start_0
    const-string v1, "initiateHs20IconQuery"

    .line 1945
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateHs20IconQuery"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1946
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1948
    :cond_0
    :try_start_1
    invoke-interface {v2, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1949
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateHs20IconQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1950
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1951
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateHs20IconQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1952
    monitor-exit v0

    return v3

    .line 1954
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateTdlsDiscover(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B

    .line 1797
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_0
    const-string v1, "initiateTdlsDiscover"

    .line 1799
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateTdlsDiscover"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1800
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1802
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1803
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateTdlsDiscover"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1804
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1805
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateTdlsDiscover"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1806
    monitor-exit v0

    return v3

    .line 1808
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateTdlsSetup(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B

    .line 1830
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1831
    :try_start_0
    const-string v1, "initiateTdlsSetup"

    .line 1832
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateTdlsSetup"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1833
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1835
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1836
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateTdlsSetup"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1837
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1838
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateTdlsSetup"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1839
    monitor-exit v0

    return v3

    .line 1841
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateTdlsTeardown(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B

    .line 1864
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1865
    :try_start_0
    const-string v1, "initiateTdlsTeardown"

    .line 1866
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateTdlsTeardown"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1867
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1869
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1870
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateTdlsTeardown"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1871
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1872
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateTdlsTeardown"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1873
    monitor-exit v0

    return v3

    .line 1875
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isV1_1()Z
    .locals 6

    .line 831
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

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

    .line 839
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 834
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v3, "getSupplicantMockable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 837
    monitor-exit v0

    return v1

    .line 839
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isVendor_2_0()Z
    .locals 6

    .line 847
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

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

    .line 855
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 850
    :catch_0
    move-exception v2

    .line 851
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 853
    monitor-exit v0

    return v1

    .line 855
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$addIfaceV1_1$7(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 590
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 592
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 595
    :cond_0
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 596
    return-void
.end method

.method public static synthetic lambda$addNetwork$8(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 1
    .param p1, "newNetwork"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1298
    const-string v0, "addNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1301
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppAddBootstrapQrCode$15(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3311
    const-string v0, "dppAddBootstrapQrCode"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3312
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3314
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppBootstrapGenerate$16(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3349
    const-string v0, "dppBootstrapGenerate"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3350
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3352
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppBootstrapRemove$18(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3407
    const-string v0, "dppBootstrapRemove"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3408
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3410
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppConfiguratorAdd$20(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3500
    const-string v0, "dppConfiguratorAdd"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3501
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3503
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppConfiguratorGetKey$23(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "KEY"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "key"    # Ljava/lang/String;

    .line 3592
    const-string v0, "dppConfiguratorGetKey"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3593
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 3595
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppConfiguratorRemove$21(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3529
    const-string v0, "dppConfiguratorRemove"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3530
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3532
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppGetUri$17(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "URI"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "uri"    # Ljava/lang/String;

    .line 3378
    const-string v0, "dppGetUri"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3379
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 3381
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppListen$19(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3444
    const-string v0, "dppListen"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3445
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3447
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppStartAuth$22(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "Status"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3563
    const-string v0, "dppStartAuth"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3564
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3566
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getCapabilities$13(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "capability"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "capaVal"    # Ljava/lang/String;

    .line 2215
    const-string v0, "getCapabilities"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2218
    :cond_0
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$5(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ifaces"    # Ljava/util/ArrayList;

    .line 536
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 540
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 541
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$6(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 557
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 561
    :cond_0
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 562
    return-void
.end method

.method public static synthetic lambda$getMacAddress$12(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1
    .param p1, "gotMac"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "macAddr"    # [B

    .line 1972
    const-string v0, "getMacAddress"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1975
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getNetwork$9(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 1
    .param p1, "gotNetwork"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1382
    const-string v0, "getNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1385
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getVendorIfaceV2_0$3(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "ifaces"    # Ljava/util/ArrayList;

    .line 482
    const-string v0, "listVendorInterfaces"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 486
    return-void
.end method

.method public static synthetic lambda$getVendorIfaceV2_0$4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)V
    .locals 1
    .param p1, "supplicantVendorIface"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 504
    const-string v0, "getVendorInterface"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 508
    return-void
.end method

.method public static synthetic lambda$getVendorNetwork$10(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;)V
    .locals 1
    .param p1, "gotNetwork"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "network"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;

    .line 1415
    const-string v0, "getVendorNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1418
    :cond_0
    return-void
.end method

.method public static synthetic lambda$listNetworks$11(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "networkIdList"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "networkIds"    # Ljava/util/ArrayList;

    .line 1491
    const-string v0, "listNetworks"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1494
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceManager died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicant died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor/ISupplicantVendorStaIface died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V

    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$startWpsPinDisplay$14(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "gotPin"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pin"    # Ljava/lang/String;

    .line 2427
    const-string v0, "startWpsPinDisplay"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2430
    :cond_0
    return-void
.end method

.method private linkToServiceManagerDeath()Z
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 199
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    monitor-exit v0

    return v2

    .line 208
    :cond_1
    nop

    .line 209
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "IServiceManager.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    monitor-exit v0

    return v2

    .line 210
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantDeath()Z
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 263
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    monitor-exit v0

    return v2

    .line 271
    :cond_1
    nop

    .line 272
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "ISupplicant.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    monitor-exit v0

    return v2

    .line 273
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantVendorDeath()Z
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 280
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicantVendor"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    monitor-exit v0

    return v2

    .line 288
    :cond_1
    nop

    .line 289
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "ISupplicantVendor.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    monitor-exit v0

    return v2

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantVendorStaIfaceDeath(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;)Z
    .locals 5
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    .line 340
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 353
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 343
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicantVendorStaIface"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    monitor-exit v0

    return v1

    .line 351
    :cond_1
    nop

    .line 352
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "ISupplicantVendorStaIface.linkToDeath exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    monitor-exit v0

    return v1

    .line 353
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private listNetworks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1485
    :try_start_0
    const-string v1, "listNetworks"

    .line 1486
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "listNetworks"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1487
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1488
    :cond_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    .local v3, "networkIdList":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$vbizHBm9oUFoAR1zumXl5LgQckc;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$vbizHBm9oUFoAR1zumXl5LgQckc;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    goto :goto_0

    .line 1495
    :catch_0
    move-exception v4

    .line 1496
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "listNetworks"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1498
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v4

    .line 1499
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v3    # "networkIdList":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private logCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 2698
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2699
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 2700
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIfaceCallback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_0
    monitor-exit v0

    .line 2703
    return-void

    .line 2702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3281
    const-string v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3289
    const-string v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3285
    const-string v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    return-void
.end method

.method private registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z
    .locals 5
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .param p2, "callback"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    .line 1433
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_0
    const-string v1, "registerCallback"

    .line 1435
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1437
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1438
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "registerCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1439
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v3

    .line 1440
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "registerCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1441
    monitor-exit v0

    return v2

    .line 1443
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerCallbackV1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Z
    .locals 5
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .param p2, "callback"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    .line 1449
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1450
    :try_start_0
    const-string v1, "registerCallback_1_1"

    .line 1452
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1454
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1455
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1456
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v3

    .line 1457
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1458
    monitor-exit v0

    return v2

    .line 1460
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Z
    .locals 5
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .param p2, "callback"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;

    .line 1466
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_0
    const-string v1, "registerVendorCallback"

    .line 1468
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1470
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1471
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1472
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v3

    .line 1473
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1474
    monitor-exit v0

    return v2

    .line 1476
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeIfaceV1_1(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 646
    .local v2, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 647
    iput v1, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 648
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->removeInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 649
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    iget v4, v3, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v4, :cond_0

    .line 650
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove iface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :try_start_1
    monitor-exit v0

    return v1

    .line 657
    .end local v2    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :cond_0
    nop

    .line 658
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 659
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 653
    :catch_0
    move-exception v2

    .line 654
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.removeInterface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v3, "removeInterface"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 656
    monitor-exit v0

    return v1

    .line 659
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeNetwork(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1327
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1328
    :try_start_0
    const-string v1, "removeNetwork"

    .line 1329
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "removeNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1330
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1332
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1333
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "removeNetwork"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1334
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1335
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "removeNetwork"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1336
    monitor-exit v0

    return v3

    .line 1338
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeRxFilter(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # B

    .line 2093
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2094
    :try_start_0
    const-string v1, "removeRxFilter"

    .line 2095
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "removeRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2096
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2098
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2099
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "removeRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2100
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2101
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "removeRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2102
    monitor-exit v0

    return v3

    .line 2104
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setBtCoexistenceMode(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # B

    .line 2138
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2139
    :try_start_0
    const-string v1, "setBtCoexistenceMode"

    .line 2140
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setBtCoexistenceMode"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2141
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2143
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2144
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setBtCoexistenceMode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2145
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2146
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setBtCoexistenceMode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2147
    monitor-exit v0

    return v3

    .line 2149
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setConcurrencyPriority(I)Z
    .locals 7
    .param p1, "type"    # I

    .line 2547
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2548
    :try_start_0
    const-string v1, "setConcurrencyPriority"

    .line 2549
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setConcurrencyPriority"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2551
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->setConcurrencyPriority(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2552
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setConcurrencyPriority"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2557
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2558
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicant.removeInterface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->clearState()V

    .line 2560
    monitor-exit v0

    return v3

    .line 2553
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2554
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setConcurrencyPriority"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2555
    monitor-exit v0

    return v3

    .line 2563
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setCountryCode(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "code"    # [B

    .line 2242
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2243
    :try_start_0
    const-string v1, "setCountryCode"

    .line 2244
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setCountryCode"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2245
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2247
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2248
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setCountryCode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2249
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2250
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setCountryCode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2251
    monitor-exit v0

    return v3

    .line 2253
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDebugParams(IZZ)Z
    .locals 5
    .param p1, "level"    # I
    .param p2, "showTimestamp"    # Z
    .param p3, "showKeys"    # Z

    .line 2514
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2515
    :try_start_0
    const-string v1, "setDebugParams"

    .line 2516
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDebugParams"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2518
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 2519
    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->setDebugParams(IZZ)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2520
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDebugParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2521
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2522
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDebugParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2523
    monitor-exit v0

    return v3

    .line 2525
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWpsConfigMethods(Ljava/lang/String;S)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configMethods"    # S

    .line 1678
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1679
    :try_start_0
    const-string v1, "setWpsConfigMethods"

    .line 1680
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsConfigMethods"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1681
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1683
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1684
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsConfigMethods"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1685
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1686
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsConfigMethods"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1687
    monitor-exit v0

    return v3

    .line 1689
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWpsDeviceType(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # [B

    .line 1557
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1558
    :try_start_0
    const-string v1, "setWpsDeviceType"

    .line 1559
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsDeviceType"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1560
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1562
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1563
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsDeviceType"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1564
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1565
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsDeviceType"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1566
    monitor-exit v0

    return v3

    .line 1568
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startWpsPbc(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B

    .line 2362
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2363
    :try_start_0
    const-string v1, "startWpsPbc"

    .line 2364
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startWpsPbc"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2365
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2367
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2368
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startWpsPbc"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2369
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2370
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startWpsPbc"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2371
    monitor-exit v0

    return v3

    .line 2373
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startWpsPinDisplay(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B

    .line 2419
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2420
    :try_start_0
    const-string v1, "startWpsPinDisplay"

    .line 2421
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startWpsPinDisplay"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2422
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 2423
    :cond_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    .local v3, "gotPin":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ZCJ306gH1HQ1oEZ_VXbEMDMXmIg;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ZCJ306gH1HQ1oEZ_VXbEMDMXmIg;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, p2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2433
    goto :goto_0

    .line 2431
    :catch_0
    move-exception v4

    .line 2432
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "startWpsPinDisplay"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2434
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 2435
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v3    # "gotPin":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startWpsRegistrar(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B
    .param p3, "pin"    # Ljava/lang/String;

    .line 2328
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2329
    :try_start_0
    const-string v1, "startWpsRegistrar"

    .line 2330
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startWpsRegistrar"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2331
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2333
    :cond_0
    :try_start_1
    invoke-interface {v2, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2334
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startWpsRegistrar"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2335
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2336
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startWpsRegistrar"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2337
    monitor-exit v0

    return v3

    .line 2339
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static stringToWpsConfigMethod(Ljava/lang/String;)S
    .locals 5
    .param p0, "configMethod"    # Ljava/lang/String;

    .line 2717
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

    .line 2747
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

    .line 2745
    :pswitch_0
    const/16 v0, 0x4008

    return v0

    .line 2743
    :pswitch_1
    const/16 v0, 0x2008

    return v0

    .line 2741
    :pswitch_2
    const/16 v0, 0x1000

    return v0

    .line 2739
    :pswitch_3
    const/16 v0, 0x480

    return v0

    .line 2737
    :pswitch_4
    const/16 v0, 0x280

    return v0

    .line 2735
    :pswitch_5
    const/16 v0, 0x100

    return v0

    .line 2733
    :pswitch_6
    const/16 v0, 0x80

    return v0

    .line 2731
    :pswitch_7
    const/16 v0, 0x40

    return v0

    .line 2729
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 2727
    :pswitch_9
    const/16 v0, 0x20

    return v0

    .line 2725
    :pswitch_a
    return v2

    .line 2723
    :pswitch_b
    return v4

    .line 2721
    :pswitch_c
    return v3

    .line 2719
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

.method private static supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;
    .locals 3
    .param p0, "state"    # I

    .line 2756
    packed-switch p0, :pswitch_data_0

    .line 2778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2776
    :pswitch_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2774
    :pswitch_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2772
    :pswitch_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2770
    :pswitch_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2768
    :pswitch_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2766
    :pswitch_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2764
    :pswitch_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2762
    :pswitch_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2760
    :pswitch_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2758
    :pswitch_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 4

    .line 710
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 712
    .local v2, "ifaceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    .line 713
    .end local v2    # "ifaceName":Ljava/lang/String;
    goto :goto_0

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->clearState()V

    .line 715
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;->onDeath()V

    .line 718
    :cond_1
    monitor-exit v0

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private supplicantvendorServiceDiedHandler()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 705
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .param p3, "hlpPacket"    # Ljava/lang/String;

    .line 2287
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2288
    :try_start_0
    const-string v1, "filsHlpAddRequest"

    .line 2289
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "filsHlpAddRequest"

    .line 2290
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 2291
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2293
    :cond_0
    nop

    .line 2294
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 2295
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2293
    invoke-interface {v2, v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->filsHlpAddRequest([BLjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2296
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "filsHlpAddRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2297
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2298
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "filsHlpAddRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2299
    monitor-exit v0

    return v3

    .line 2301
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addRxFilter(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 2034
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2036
    packed-switch p2, :pswitch_data_0

    .line 2044
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    goto :goto_1

    .line 2041
    :pswitch_0
    const/4 v1, 0x1

    .line 2042
    .local v1, "halType":B
    goto :goto_0

    .line 2038
    .end local v1    # "halType":B
    :pswitch_1
    const/4 v1, 0x0

    .line 2039
    .restart local v1    # "halType":B
    nop

    .line 2045
    :goto_0
    nop

    .line 2047
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;B)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2044
    .end local v1    # "halType":B
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Rx Filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2445
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2446
    :try_start_0
    const-string v1, "cancelWps"

    .line 2447
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "cancelWps"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2448
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2450
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2451
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "cancelWps"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2452
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2453
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "cancelWps"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2454
    monitor-exit v0

    return v3

    .line 2456
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 939
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiGbk;->getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiGbk;->isAllAscii([B)Z

    move-result v1

    .line 941
    .local v1, "isAscii":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isAscii="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    .line 942
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 943
    .local v2, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-static {p2, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->isSameNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 944
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    .line 945
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, "networkSelectionBSSID":Ljava/lang/String;
    nop

    .line 947
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, "networkSelectionBSSIDCurrent":Ljava/lang/String;
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 949
    const-string v6, "Network is already saved, will not trigger remove and add operation."

    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_0
    const-string v6, "Network is already saved, but need to update BSSID."

    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    .line 952
    nop

    .line 954
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v6

    .line 952
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCurrentNetworkBssid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 955
    const-string v6, "Failed to set current network BSSID."

    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 956
    monitor-exit v0

    return v4

    .line 958
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7, p2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .end local v3    # "networkSelectionBSSID":Ljava/lang/String;
    .end local v5    # "networkSelectionBSSIDCurrent":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 961
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 964
    const-string v3, "Failed to remove existing networks"

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 965
    monitor-exit v0

    return v4

    .line 971
    :cond_3
    const-string v3, "key_mgmt"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FILS-SHA256"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 972
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->clear(I)V

    .line 974
    :cond_4
    const-string v3, "key_mgmt"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FILS-SHA384"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 975
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->clear(I)V

    .line 977
    :cond_5
    nop

    .line 978
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addNetworkAndSaveConfig(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;

    move-result-object v3

    .line 979
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_6

    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add/save network configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 981
    monitor-exit v0

    return v4

    .line 983
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/net/wifi/WifiConfiguration;>;"
    :goto_1
    const-string v3, "key_mgmt"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 987
    const-string v3, "connectToNetwork"

    .line 988
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v3

    .line 989
    .local v3, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->select()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    .line 993
    :cond_7
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 990
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to select network configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 991
    monitor-exit v0

    return v4

    .line 994
    .end local v1    # "isAscii":Z
    .end local v2    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deregisterDeathHandler()Z
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    if-nez v1, :cond_0

    .line 683
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "No Death handler present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    .line 686
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1741
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1742
    :try_start_0
    const-string v1, "disconnect"

    .line 1743
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "disconnect"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1744
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1746
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1747
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "disconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1748
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1749
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "disconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1750
    monitor-exit v0

    return v3

    .line 1752
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 3301
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3302
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3303
    :try_start_0
    const-string v2, "dppAddBootstrapQrCode"

    .line 3304
    .local v2, "methodStr":Ljava/lang/String;
    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 3305
    .local v3, "handle":Landroid/util/MutableInt;
    const-string v4, "dppAddBootstrapQrCode"

    .line 3306
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 3307
    .local v4, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 3309
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$TXPRlZQHhC4GDRTZGuZYhNWqa5Y;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$TXPRlZQHhC4GDRTZGuZYhNWqa5Y;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, p2, v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppAddBootstrapQrcode(Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppAddBootstrapQrcodeCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3317
    goto :goto_0

    .line 3315
    :catch_0
    move-exception v1

    .line 3316
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppAddBootstrapQrCode"

    invoke-direct {p0, v1, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3318
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v1, v3, Landroid/util/MutableInt;->value:I

    monitor-exit v0

    return v1

    .line 3319
    .end local v2    # "methodStr":Ljava/lang/String;
    .end local v3    # "handle":Landroid/util/MutableInt;
    .end local v4    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppBootstrapGenerate(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 17
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    move-object/from16 v1, p0

    .line 3331
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3332
    :try_start_0
    const-string v0, "dppBootstrapGenerate"

    move-object v4, v0

    .line 3333
    .local v4, "methodStr":Ljava/lang/String;
    new-instance v0, Landroid/util/MutableInt;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Landroid/util/MutableInt;-><init>(I)V

    move-object v6, v0

    .line 3335
    .local v6, "handle":Landroid/util/MutableInt;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->chan_list:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->chan_list:Ljava/lang/String;

    :goto_0
    move-object v9, v0

    .line 3336
    .local v9, "chan_list":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->mac_addr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "00:00:00:00:00:00"

    goto :goto_1

    :cond_1
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->mac_addr:Ljava/lang/String;

    :goto_1
    move-object v15, v0

    .line 3337
    .local v15, "mac_addr":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->info:Ljava/lang/String;

    :goto_2
    move-object v11, v0

    .line 3338
    .local v11, "info":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->curve:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_3

    :cond_3
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->curve:Ljava/lang/String;

    :goto_3
    move-object v12, v0

    .line 3339
    .local v12, "curve":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_4

    :cond_4
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->key:Ljava/lang/String;

    :goto_4
    move-object v13, v0

    .line 3341
    .local v13, "key":Ljava/lang/String;
    const-string v0, "dppBootstrapGenerate"

    .line 3342
    move-object/from16 v14, p1

    invoke-direct {v1, v14, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3343
    .local v16, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v16, :cond_5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    .line 3345
    :cond_5
    :try_start_1
    iget v8, v2, Landroid/net/wifi/WifiDppConfig;->bootstrap_type:I

    .line 3346
    invoke-static {v15}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$o7JCogmb0lYsbaQj4E4rJNaS0So;

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$o7JCogmb0lYsbaQj4E4rJNaS0So;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    .line 3345
    move-object/from16 v7, v16

    move-object v14, v0

    invoke-interface/range {v7 .. v14}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppBootstrapGenerate(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppBootstrapGenerateCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3355
    goto :goto_5

    .line 3353
    :catch_0
    move-exception v0

    .line 3354
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppBootstrapGenerate"

    invoke-direct {v1, v0, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3356
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    iget v0, v6, Landroid/util/MutableInt;->value:I

    monitor-exit v3

    return v0

    .line 3357
    .end local v4    # "methodStr":Ljava/lang/String;
    .end local v6    # "handle":Landroid/util/MutableInt;
    .end local v9    # "chan_list":Ljava/lang/String;
    .end local v11    # "info":Ljava/lang/String;
    .end local v12    # "curve":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "mac_addr":Ljava/lang/String;
    .end local v16    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dppBootstrapRemove(Ljava/lang/String;I)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3398
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3399
    :try_start_0
    const-string v1, "dppBootstrapRemove"

    .line 3400
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/util/MutableInt;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 3401
    .local v2, "handle":Landroid/util/MutableInt;
    const-string v4, "dppBootstrapRemove"

    .line 3402
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 3403
    .local v4, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3405
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Pou98csAV1e4ds9MzirIJDlDCek;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Pou98csAV1e4ds9MzirIJDlDCek;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, p2, v3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppBootstrapRemove(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppBootstrapRemoveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3413
    goto :goto_0

    .line 3411
    :catch_0
    move-exception v3

    .line 3412
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppBootstrapRemove"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3414
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v3, v2, Landroid/util/MutableInt;->value:I

    monitor-exit v0

    return v3

    .line 3415
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "handle":Landroid/util/MutableInt;
    .end local v4    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "expiry"    # I

    .line 3489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 3490
    .local v0, "curve_t":Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    move-object v1, p3

    .line 3491
    .local v1, "key_t":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3492
    :try_start_0
    const-string v3, "dppConfiguratorAdd"

    .line 3493
    .local v3, "methodStr":Ljava/lang/String;
    new-instance v4, Landroid/util/MutableInt;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/util/MutableInt;-><init>(I)V

    .line 3494
    .local v4, "handle":Landroid/util/MutableInt;
    const-string v6, "dppConfiguratorAdd"

    .line 3495
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v6

    .line 3496
    .local v6, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v6, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    .line 3498
    :cond_2
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v6, v0, v1, p4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorAddCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3506
    goto :goto_2

    .line 3504
    :catch_0
    move-exception v5

    .line 3505
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "dppConfiguratorAdd"

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3507
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    iget v5, v4, Landroid/util/MutableInt;->value:I

    monitor-exit v2

    return v5

    .line 3508
    .end local v3    # "methodStr":Ljava/lang/String;
    .end local v4    # "handle":Landroid/util/MutableInt;
    .end local v6    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public dppConfiguratorGetKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 3583
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3584
    :try_start_0
    const-string v1, "dppConfiguratorGetKey"

    .line 3585
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 3586
    .local v2, "KEY":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    const-string v3, "dppConfiguratorGetKey"

    .line 3587
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v3

    .line 3588
    .local v3, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v3, :cond_0

    const-string v4, "-1"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 3590
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$RBi36-203ABCmvHFm6f6UxnQevw;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$RBi36-203ABCmvHFm6f6UxnQevw;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, p2, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppConfiguratorGetKey(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorGetKeyCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3598
    goto :goto_0

    .line 3596
    :catch_0
    move-exception v4

    .line 3597
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppConfiguratorGetKey"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3599
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 3600
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "KEY":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    .end local v3    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppConfiguratorRemove(Ljava/lang/String;I)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config_id"    # I

    .line 3520
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3521
    :try_start_0
    const-string v1, "dppConfiguratorRemove"

    .line 3522
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/util/MutableInt;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 3523
    .local v2, "handle":Landroid/util/MutableInt;
    const-string v4, "dppConfiguratorRemove"

    .line 3524
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 3525
    .local v4, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3527
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$e-5GRHbs6u8e0C1pOtvJM8TUpeU;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$e-5GRHbs6u8e0C1pOtvJM8TUpeU;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, p2, v3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppConfiguratorRemove(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorRemoveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3535
    goto :goto_0

    .line 3533
    :catch_0
    move-exception v3

    .line 3534
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppConfiguratorRemove"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3536
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v3, v2, Landroid/util/MutableInt;->value:I

    monitor-exit v0

    return v3

    .line 3537
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "handle":Landroid/util/MutableInt;
    .end local v4    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppGetUri(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3369
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3370
    :try_start_0
    const-string v1, "dppGetUri"

    .line 3371
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 3372
    .local v2, "URI":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    const-string v3, "dppGetUri"

    .line 3373
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v3

    .line 3374
    .local v3, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v3, :cond_0

    const-string v4, "-1"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 3376
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$qhiJ8L_Fb0Qu9HQHF1rTXObaUYk;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$qhiJ8L_Fb0Qu9HQHF1rTXObaUYk;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, p2, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppGetUri(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppGetUriCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3384
    goto :goto_0

    .line 3382
    :catch_0
    move-exception v4

    .line 3383
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppGetUri"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3385
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 3386
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "URI":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    .end local v3    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppListen(Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 14
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "dpp_role"    # I
    .param p4, "qr_mutual"    # Z
    .param p5, "netrole_ap"    # Z

    move-object v1, p0

    .line 3433
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    return v2

    .line 3434
    :cond_0
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3435
    :try_start_0
    const-string v0, "dppListen"

    move-object v4, v0

    .line 3436
    .local v4, "methodStr":Ljava/lang/String;
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v2}, Landroid/util/MutableInt;-><init>(I)V

    move-object v5, v0

    .line 3437
    .local v5, "handle":Landroid/util/MutableInt;
    const-string v0, "dppListen"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3438
    move-object v6, p1

    :try_start_1
    invoke-direct {v1, v6, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v0

    move-object v13, v0

    .line 3439
    .local v13, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v13, :cond_1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    .line 3441
    :cond_1
    :try_start_2
    new-instance v12, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$JSR26jYC_doRJXe9RFy5-NEnuhc;

    invoke-direct {v12, v1, v5}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$JSR26jYC_doRJXe9RFy5-NEnuhc;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    move-object v7, v13

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v7 .. v12}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppStartListen(Ljava/lang/String;IZZLvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartListenCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3450
    goto :goto_0

    .line 3448
    :catch_0
    move-exception v0

    .line 3449
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "dppListen"

    invoke-direct {v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3451
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v0, v5, Landroid/util/MutableInt;->value:I

    monitor-exit v3

    return v0

    .line 3452
    .end local v4    # "methodStr":Ljava/lang/String;
    .end local v5    # "handle":Landroid/util/MutableInt;
    .end local v13    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v0

    move-object v6, p1

    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public dppStartAuth(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 20
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    move-object/from16 v1, p0

    .line 3549
    move-object/from16 v2, p2

    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 3550
    .local v7, "ssid":Ljava/lang/String;
    :goto_1
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->passphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_1
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->passphrase:Ljava/lang/String;

    goto :goto_2

    .line 3551
    .local v8, "passphrase":Ljava/lang/String;
    :goto_3
    iget-object v14, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3552
    :try_start_0
    const-string v0, "dppStartAuth"

    move-object v15, v0

    .line 3553
    .local v15, "methodStr":Ljava/lang/String;
    new-instance v0, Landroid/util/MutableInt;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    move-object v13, v0

    .line 3554
    .local v13, "Status":Landroid/util/MutableInt;
    const-string v0, "dppStartAuth"

    .line 3555
    move-object/from16 v12, p1

    invoke-direct {v1, v12, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3556
    .local v16, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v16, :cond_2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3558
    :cond_2
    :try_start_1
    iget v4, v2, Landroid/net/wifi/WifiDppConfig;->peer_bootstrap_id:I

    iget v5, v2, Landroid/net/wifi/WifiDppConfig;->own_bootstrap_id:I

    iget v6, v2, Landroid/net/wifi/WifiDppConfig;->dpp_role:I

    .line 3560
    iget v0, v2, Landroid/net/wifi/WifiDppConfig;->isAp:I

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-lez v0, :cond_3

    .line 3561
    move v0, v9

    goto :goto_4

    .line 3560
    :cond_3
    nop

    .line 3561
    move v0, v3

    :goto_4
    iget v10, v2, Landroid/net/wifi/WifiDppConfig;->isDpp:I

    if-lez v10, :cond_4

    move v10, v9

    goto :goto_5

    :cond_4
    move v10, v3

    :goto_5
    iget v11, v2, Landroid/net/wifi/WifiDppConfig;->conf_id:I

    iget v9, v2, Landroid/net/wifi/WifiDppConfig;->expiry:I

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$FE6pL-Y40v5jbgT2rVfRuqdIYbE;

    invoke-direct {v3, v1, v13}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$FE6pL-Y40v5jbgT2rVfRuqdIYbE;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3558
    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v18, v9

    move v9, v0

    move/from16 v12, v18

    move-object v2, v13

    move-object/from16 v13, v17

    .end local v13    # "Status":Landroid/util/MutableInt;
    .local v2, "Status":Landroid/util/MutableInt;
    :try_start_2
    invoke-interface/range {v3 .. v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppStartAuth(IIILjava/lang/String;Ljava/lang/String;ZZIILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartAuthCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3569
    goto :goto_7

    .line 3567
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v2    # "Status":Landroid/util/MutableInt;
    .restart local v13    # "Status":Landroid/util/MutableInt;
    :catch_1
    move-exception v0

    move-object v2, v13

    .line 3568
    .end local v13    # "Status":Landroid/util/MutableInt;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "Status":Landroid/util/MutableInt;
    :goto_6
    :try_start_3
    const-string v3, "dppStartAuth"

    invoke-direct {v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3570
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    iget v0, v2, Landroid/util/MutableInt;->value:I

    monitor-exit v14

    return v0

    .line 3571
    .end local v2    # "Status":Landroid/util/MutableInt;
    .end local v15    # "methodStr":Ljava/lang/String;
    .end local v16    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public dppStopListen(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 3462
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3463
    :try_start_0
    const-string v1, "dppStopListen"

    .line 3464
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "dppStopListen"

    .line 3465
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 3466
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3468
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppStopListen()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 3469
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "dppStopListen"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 3470
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 3471
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "dppStopListen"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3472
    monitor-exit v0

    return v3

    .line 3474
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public enableAutoReconnect(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2483
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2484
    :try_start_0
    const-string v1, "enableAutoReconnect"

    .line 2485
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "enableAutoReconnect"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2486
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2488
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2489
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "enableAutoReconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2490
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2491
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "enableAutoReconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2492
    monitor-exit v0

    return v3

    .line 2494
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method enableVerboseLogging(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushAllHlp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2263
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_0
    const-string v1, "filsHlpFlushRequest"

    .line 2265
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "filsHlpFlushRequest"

    .line 2266
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 2267
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2269
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->filsHlpFlushRequest()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2270
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "filsHlpFlushRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2271
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2272
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "filsHlpFlushRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2273
    monitor-exit v0

    return v3

    .line 2275
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capaType"    # Ljava/lang/String;

    .line 2204
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2205
    :try_start_0
    const-string v1, "getCapabilities"

    .line 2206
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 2208
    .local v2, "capability":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    const-string v3, ""

    iput-object v3, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2209
    const-string v3, "getCapabilities"

    .line 2210
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v3

    .line 2211
    .local v3, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v3, :cond_0

    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 2213
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$sNAq9CepHZfHo6B1c5htZsmUDvs;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$sNAq9CepHZfHo6B1c5htZsmUDvs;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, p2, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->getCapabilities(Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$getCapabilitiesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2221
    goto :goto_0

    .line 2219
    :catch_0
    move-exception v4

    .line 2220
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "getCapabilities"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2222
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 2223
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "capability":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    .end local v3    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentNetworkEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_0
    const-string v1, "getCurrentNetworkEapAnonymousIdentity"

    .line 1172
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1174
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1175
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->fetchEapAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1176
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_0
    const-string v1, "getCurrentNetworkWpsNfcConfigurationToken"

    .line 1156
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1158
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1159
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1160
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1964
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1965
    :try_start_0
    const-string v1, "getMacAddress"

    .line 1966
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getMacAddress"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1967
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1968
    :cond_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    .local v3, "gotMac":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Qj1RKRO_qPFprwttCvbNxOY1I3E;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Qj1RKRO_qPFprwttCvbNxOY1I3E;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1978
    goto :goto_0

    .line 1976
    :catch_0
    move-exception v4

    .line 1977
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "getMacAddress"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1979
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 1980
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v3    # "gotMac":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 762
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getStaIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .locals 2
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 801
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getStaIfaceMockableV1_1(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .locals 2
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 808
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    nop

    .line 810
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;

    move-result-object v1

    monitor-exit v0

    .line 809
    return-object v1

    .line 811
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getStaNetworkMockable(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "iSupplicantStaNetwork"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
    .param p3, "iSupplicantVendorStaNetwork"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    .line 1356
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    :try_start_0
    new-instance v7, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V

    move-object v1, v7

    .line 1363
    .local v1, "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    nop

    .line 1364
    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->enableVerboseLogging(Z)V

    .line 1366
    monitor-exit v0

    return-object v1

    .line 1367
    .end local v1    # "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 773
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 769
    :catch_0
    move-exception v1

    .line 770
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 773
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1

    .line 791
    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 797
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 797
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_0
    invoke-static {}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->getService()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 784
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 784
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getVendorStaIfaceMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .locals 2
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 815
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    invoke-interface {p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 817
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getVendorStaNetworkMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
    .locals 2
    .param p1, "network"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;

    .line 821
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_0
    invoke-interface {p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize()Z
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Registering ISupplicant service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 224
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 225
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 226
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 233
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 234
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 235
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Failed to get HIDL Service Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 238
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToServiceManagerDeath()Z

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    .line 239
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v4

    .line 243
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string v6, ""

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v2, v5, v6, v7}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    const-string v2, "SupplicantStaIfaceHal"

    const-string v5, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    :try_start_6
    monitor-exit v0

    return v4

    .line 254
    :cond_4
    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 255
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return v3

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public initiateAnqpQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1890
    .local p3, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .local p4, "hs20SubTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1892
    nop

    .line 1894
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1892
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1899
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v1

    .line 1896
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1899
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateHs20IconQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 1929
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1931
    nop

    .line 1932
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1931
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1937
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1933
    :catch_0
    move-exception v1

    .line 1934
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1935
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1937
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateTdlsDiscover(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1785
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1787
    nop

    .line 1788
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1787
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1793
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1789
    :catch_0
    move-exception v1

    .line 1790
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1791
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1793
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateTdlsSetup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1819
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1826
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v1

    .line 1823
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1824
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1826
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateTdlsTeardown(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    nop

    .line 1854
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1853
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1859
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1855
    :catch_0
    move-exception v1

    .line 1856
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1859
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInitializationStarted()Z
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadNetworks(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z
    .locals 17
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1045
    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1046
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v0

    .line 1047
    .local v5, "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 1048
    const-string v0, "SupplicantStaIfaceHal"

    const-string v7, "Failed to list networks"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    monitor-exit v4

    return v6

    .line 1051
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 1052
    .local v8, "networkId":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getNetwork(Ljava/lang/String;I)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v0

    move-object v9, v0

    .line 1053
    .local v9, "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v9, :cond_1

    .line 1054
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get network with ID: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    monitor-exit v4

    return v6

    .line 1057
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v10, v0

    .line 1058
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 1059
    .local v11, "networkExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v12, v6

    .line 1061
    .local v12, "loadSuccess":Z
    :try_start_1
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->loadWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v12, v0

    .line 1064
    goto :goto_1

    .line 1062
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 1063
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v13, "SupplicantStaIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while loading config params: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    if-nez v12, :cond_2

    .line 1066
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to load wifi configuration for network with ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ". Skipping..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    goto :goto_0

    .line 1071
    :cond_2
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1072
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1074
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    const-string v0, "configKey"

    .line 1076
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    .local v0, "configKey":Ljava/lang/String;
    move-object/from16 v13, p2

    :try_start_3
    invoke-interface {v13, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 1078
    .local v14, "duplicateConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v14, :cond_3

    .line 1080
    const-string v15, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Replacing duplicate network: "

    .end local v0    # "configKey":Ljava/lang/String;
    .local v16, "configKey":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetwork(Ljava/lang/String;I)Z

    .line 1082
    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1084
    .end local v8    # "networkId":Ljava/lang/Integer;
    .end local v9    # "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "networkExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "loadSuccess":Z
    .end local v14    # "duplicateConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "configKey":Ljava/lang/String;
    :cond_3
    nop

    .line 1051
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1085
    :cond_4
    move-object/from16 v13, p2

    const/4 v0, 0x1

    monitor-exit v4

    return v0

    .line 1086
    .end local v5    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public reassociate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1699
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1700
    :try_start_0
    const-string v1, "reassociate"

    .line 1701
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "reassociate"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1702
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1704
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1705
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "reassociate"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1706
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1707
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "reassociate"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1708
    monitor-exit v0

    return v3

    .line 1710
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reconnect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1720
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1721
    :try_start_0
    const-string v1, "reconnect"

    .line 1722
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "reconnect"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1723
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1725
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1726
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "reconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1727
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1728
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "reconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1729
    monitor-exit v0

    return v3

    .line 1731
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerDeathHandler(Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;)Z
    .locals 3
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    .line 667
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    if-eqz v1, :cond_0

    .line 669
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Death handler already present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    .line 672
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1113
    .local v1, "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1114
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "removeAllNetworks failed, got null networks"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    monitor-exit v0

    return v2

    .line 1117
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1118
    .local v4, "id":I
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetwork(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1119
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAllNetworks failed to remove network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    monitor-exit v0

    return v2

    .line 1122
    .end local v4    # "id":I
    :cond_1
    goto :goto_0

    .line 1125
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1128
    .end local v1    # "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNetworkIfCurrent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "networkId"    # I

    .line 1097
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1100
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    .line 1102
    :cond_0
    monitor-exit v0

    .line 1103
    return-void

    .line 1102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRxFilter(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 2075
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    packed-switch p2, :pswitch_data_0

    .line 2085
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    goto :goto_1

    .line 2082
    :pswitch_0
    const/4 v1, 0x1

    .line 2083
    .local v1, "halType":B
    goto :goto_0

    .line 2079
    .end local v1    # "halType":B
    :pswitch_1
    const/4 v1, 0x0

    .line 2080
    .restart local v1    # "halType":B
    nop

    .line 2086
    :goto_0
    nop

    .line 2088
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;B)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2085
    .end local v1    # "halType":B
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Rx Filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2089
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public roamToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1011
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v1

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_0

    .line 1013
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot roam to a different network, initiate new connection. Current network ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1017
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "bssid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roamToNetwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (bssid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    .line 1020
    const-string v2, "roamToNetwork"

    .line 1021
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v2

    .line 1022
    .local v2, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1026
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reassociate(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1027
    const-string v4, "Failed to trigger reassociate"

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 1028
    monitor-exit v0

    return v3

    .line 1030
    :cond_2
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 1023
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set new bssid on network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 1024
    monitor-exit v0

    return v3

    .line 1031
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "encryptedIdentity"    # Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    const-string v1, "sendCurrentNetworkEapIdentityResponse"

    .line 1191
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1193
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1194
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1195
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimGsmAuthFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimGsmAuthFailure"

    .line 1225
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1227
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1228
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthFailure()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1229
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimGsmAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "paramsStr"    # Ljava/lang/String;

    .line 1207
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimGsmAuthResponse"

    .line 1209
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1211
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1212
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1213
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimUmtsAuthFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1275
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimUmtsAuthFailure"

    .line 1277
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1279
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1280
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthFailure()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1281
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimUmtsAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "paramsStr"    # Ljava/lang/String;

    .line 1241
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimUmtsAuthResponse"

    .line 1243
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1245
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1246
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1247
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimUmtsAutsResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "paramsStr"    # Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimUmtsAutsResponse"

    .line 1261
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1263
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1264
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1265
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBtCoexistenceMode(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2119
    packed-switch p2, :pswitch_data_0

    .line 2130
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    goto :goto_1

    .line 2127
    :pswitch_0
    const/4 v1, 0x2

    .line 2128
    .local v1, "halMode":B
    goto :goto_0

    .line 2124
    .end local v1    # "halMode":B
    :pswitch_1
    const/4 v1, 0x1

    .line 2125
    .restart local v1    # "halMode":B
    goto :goto_0

    .line 2121
    .end local v1    # "halMode":B
    :pswitch_2
    const/4 v1, 0x0

    .line 2122
    .restart local v1    # "halMode":B
    nop

    .line 2131
    :goto_0
    nop

    .line 2133
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceMode(Ljava/lang/String;B)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2130
    .end local v1    # "halMode":B
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Bt Coex mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2159
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2160
    :try_start_0
    const-string v1, "setBtCoexistenceScanModeEnabled"

    .line 2161
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2162
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2164
    :cond_0
    nop

    .line 2165
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2166
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2167
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2168
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2169
    monitor-exit v0

    return v3

    .line 2171
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setConcurrencyPriority(Z)Z
    .locals 2
    .param p1, "isStaHigherPriority"    # Z

    .line 2536
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2537
    if-eqz p1, :cond_0

    .line 2538
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2542
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2540
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2542
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "codeStr"    # Ljava/lang/String;

    .line 2234
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2235
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2236
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;[B)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentNetworkBssid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1140
    :try_start_0
    const-string v1, "setCurrentNetworkBssid"

    .line 1141
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1142
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1143
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1144
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExternalSim(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "useExternalSim"    # Z

    .line 2467
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2468
    :try_start_0
    const-string v1, "setExternalSim"

    .line 2469
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setExternalSim"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2470
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2472
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2473
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setExternalSim"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2474
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2475
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setExternalSim"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2476
    monitor-exit v0

    return v3

    .line 2478
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLogLevel(Z)Z
    .locals 3
    .param p1, "turnOnVerbose"    # Z

    .line 2504
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2505
    if-eqz p1, :cond_0

    .line 2506
    const/4 v1, 0x2

    goto :goto_0

    .line 2507
    :cond_0
    const/4 v1, 0x3

    .line 2508
    .local v1, "logLevel":I
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setDebugParams(IZZ)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2509
    .end local v1    # "logLevel":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1763
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1764
    :try_start_0
    const-string v1, "setPowerSave"

    .line 1765
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPowerSave"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1766
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1768
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1769
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setPowerSave"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1770
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1771
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setPowerSave"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1772
    monitor-exit v0

    return v3

    .line 1774
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSuspendModeEnabled(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2182
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2183
    :try_start_0
    const-string v1, "setSuspendModeEnabled"

    .line 2184
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setSuspendModeEnabled"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2185
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2187
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2188
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setSuspendModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2189
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2190
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setSuspendModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2191
    monitor-exit v0

    return v3

    .line 2193
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsConfigMethods(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configMethodsStr"    # Ljava/lang/String;

    .line 1667
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1668
    const/4 v1, 0x0

    .line 1669
    .local v1, "configMethodsMask":S
    :try_start_0
    const-string v2, "\\s+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1670
    .local v2, "configMethodsStrArr":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1671
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stringToWpsConfigMethod(Ljava/lang/String;)S

    move-result v4

    or-int/2addr v4, v1

    int-to-short v1, v4

    .line 1670
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1673
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsConfigMethods(Ljava/lang/String;S)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1674
    .end local v1    # "configMethodsMask":S
    .end local v2    # "configMethodsStrArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWpsDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1511
    :try_start_0
    const-string v1, "setWpsDeviceName"

    .line 1512
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsDeviceName"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1513
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1515
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1516
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsDeviceName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1517
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1518
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsDeviceName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1519
    monitor-exit v0

    return v3

    .line 1521
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsDeviceType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "typeStr"    # Ljava/lang/String;

    .line 1532
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1535
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 1539
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 1540
    .local v3, "categ":S
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1541
    .local v5, "oui":[B
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    .line 1543
    .local v4, "subCateg":S
    const/16 v6, 0x8

    new-array v6, v6, [B

    .line 1544
    .local v6, "bytes":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1545
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1546
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1547
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1548
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceType(Ljava/lang/String;[B)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v8

    .line 1536
    .end local v3    # "categ":S
    .end local v4    # "subCateg":S
    .end local v5    # "oui":[B
    .end local v6    # "bytes":[B
    .end local v7    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    :try_start_2
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed WPS device type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    :try_start_3
    monitor-exit v0

    return v1

    .line 1553
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1549
    :catch_0
    move-exception v2

    .line 1550
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    monitor-exit v0

    return v1

    .line 1553
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setWpsManufacturer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "manufacturer"    # Ljava/lang/String;

    .line 1579
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1580
    :try_start_0
    const-string v1, "setWpsManufacturer"

    .line 1581
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsManufacturer"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1582
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1584
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1585
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsManufacturer"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1586
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1587
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsManufacturer"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1588
    monitor-exit v0

    return v3

    .line 1590
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsModelName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "modelName"    # Ljava/lang/String;

    .line 1601
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1602
    :try_start_0
    const-string v1, "setWpsModelName"

    .line 1603
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsModelName"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1604
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1606
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1607
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsModelName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1608
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1609
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsModelName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1610
    monitor-exit v0

    return v3

    .line 1612
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsModelNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "modelNumber"    # Ljava/lang/String;

    .line 1623
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_0
    const-string v1, "setWpsModelNumber"

    .line 1625
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsModelNumber"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1626
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1628
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1629
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsModelNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1630
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1631
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsModelNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1632
    monitor-exit v0

    return v3

    .line 1634
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsSerialNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 1645
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1646
    :try_start_0
    const-string v1, "setWpsSerialNumber"

    .line 1647
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsSerialNumber"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1648
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1650
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1651
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsSerialNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1652
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1653
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsSerialNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1654
    monitor-exit v0

    return v3

    .line 1656
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    const-string v1, "setupIface"

    .line 375
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setupIface"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v0

    return v3

    .line 376
    :cond_0
    const-string v2, "setupIface"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v3

    .line 379
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v2

    .local v2, "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    goto :goto_0

    .line 382
    .end local v2    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v2

    .line 384
    .restart local v2    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :goto_0
    if-nez v2, :cond_3

    .line 385
    const-string v4, "SupplicantStaIfaceHal"

    const-string v5, "setupIface got null iface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit v0

    return v3

    .line 388
    :cond_3
    new-instance v4, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 390
    .local v4, "callback":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 391
    nop

    .line 392
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIfaceMockableV1_1(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;

    move-result-object v5

    .line 393
    .local v5, "iface":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    new-instance v6, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;

    invoke-direct {v6, p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V

    .line 396
    .local v6, "callbackV1_1":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;
    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerCallbackV1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 397
    monitor-exit v0

    return v3

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v5    # "iface":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .end local v6    # "callbackV1_1":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;
    goto :goto_1

    .line 402
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v5

    .line 404
    .local v5, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    invoke-direct {p0, v5, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 405
    monitor-exit v0

    return v3

    .line 407
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .end local v5    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->vendor_setupIface(Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 412
    const-string v3, "SupplicantStaIfaceHal"

    const-string v5, "Failed to create vendor setupiface"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_7
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 415
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .end local v4    # "callback":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRxFilter(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1990
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1991
    :try_start_0
    const-string v1, "startRxFilter"

    .line 1992
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1993
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1995
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1996
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1997
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1998
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1999
    monitor-exit v0

    return v3

    .line 2001
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;

    .line 2350
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2352
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPbc(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 2357
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2353
    :catch_0
    move-exception v1

    .line 2354
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2355
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2357
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;

    .line 2407
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2409
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinDisplay(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 2414
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2410
    :catch_0
    move-exception v1

    .line 2411
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2412
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2414
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 2384
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2386
    :try_start_0
    const-string v2, "startWpsPinKeypad"

    .line 2387
    .local v2, "methodStr":Ljava/lang/String;
    const-string v3, "startWpsPinKeypad"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v3

    .line 2388
    .local v3, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v3, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2390
    :cond_1
    :try_start_1
    invoke-interface {v3, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2391
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startWpsPinKeypad"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2392
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2393
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startWpsPinKeypad"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2394
    monitor-exit v0

    return v1

    .line 2396
    .end local v2    # "methodStr":Ljava/lang/String;
    .end local v3    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 2314
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2315
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2317
    :cond_0
    nop

    .line 2318
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2317
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsRegistrar(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 2319
    :catch_0
    move-exception v1

    .line 2320
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2321
    monitor-exit v0

    return v2

    .line 2315
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 2323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopRxFilter(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2011
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_0
    const-string v1, "stopRxFilter"

    .line 2013
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "stopRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2014
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2016
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2017
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "stopRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2018
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2019
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "stopRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2020
    monitor-exit v0

    return v3

    .line 2022
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    const-string v1, "teardownIface"

    .line 615
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "teardownIface"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return v3

    .line 616
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeIfaceV1_1(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove iface = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v0

    return v3

    .line 622
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 623
    const-string v2, "SupplicantStaIfaceHal"

    const-string v4, "Trying to teardown unknown inteface"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    monitor-exit v0

    return v3

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 627
    const-string v2, "SupplicantStaIfaceHal"

    const-string v4, "Trying to teardown unknown vendor interface"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return v3

    .line 630
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 633
    .end local v1    # "methodStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate()V
    .locals 4

    .line 743
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_0
    const-string v1, "terminate"

    .line 745
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "terminate"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 747
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->terminate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :cond_1
    goto :goto_0

    .line 750
    :catch_0
    move-exception v2

    .line 751
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "terminate"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 753
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public vendor_setupIface(Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 425
    const-string v0, "vendor_setupIface"

    .line 426
    .local v0, "methodStr":Ljava/lang/String;
    const-string v1, "vendor_setupIface"

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Already created vendor setupinterface"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v2

    .line 430
    :cond_0
    const/4 v1, 0x0

    .line 432
    .local v1, "Vendor_ifaceHwBinder":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isVendor_2_0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "Try to get Vendor HIDL@2.0 interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorIfaceV2_0(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    move-result-object v1

    .line 436
    :cond_1
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 437
    const-string v2, "SupplicantStaIfaceHal"

    const-string v4, "Failed to get vendor iface binder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v3

    .line 441
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorStaIfaceMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 442
    .local v4, "vendor_iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_3

    .line 443
    const-string v2, "SupplicantStaIfaceHal"

    const-string v5, "Failed to get ISupplicantVendorStaIface proxy"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v3

    .line 447
    :cond_3
    const-string v5, "SupplicantStaIfaceHal"

    const-string v6, "Successful get Vendor sta interface"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantVendorStaIfaceDeath(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 450
    return v3

    .line 453
    :cond_4
    if-eqz v4, :cond_6

    .line 454
    new-instance v3, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V

    .line 456
    .local v3, "vendorcallback":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
    invoke-direct {p0, v4, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 457
    const-string v5, "SupplicantStaIfaceHal"

    const-string v6, "Failed to register Vendor callback"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    nop

    .line 461
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v3    # "vendorcallback":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
    :cond_6
    :goto_0
    return v2
.end method
