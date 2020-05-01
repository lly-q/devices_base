.class public Lcom/android/server/wifi/WifiStateMachinePrime;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;,
        Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field static final CMD_AP_STOPPED:I = 0x20018

.field static final CMD_CLIENT_MODE_FAILED:I = 0x20130

.field static final CMD_CLIENT_MODE_STOPPED:I = 0x2012f

.field static final CMD_SCAN_ONLY_MODE_FAILED:I = 0x200cc

.field static final CMD_SCAN_ONLY_MODE_STOPPED:I = 0x200cb

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20016

.field static final CMD_START_CLIENT_MODE:I = 0x2012c

.field static final CMD_START_CLIENT_MODE_FAILURE:I = 0x2012d

.field static final CMD_START_SCAN_ONLY_MODE:I = 0x200c8

.field static final CMD_START_SCAN_ONLY_MODE_FAILURE:I = 0x200c9

.field static final CMD_STOP_AP:I = 0x20017

.field static final CMD_STOP_CLIENT_MODE:I = 0x2012e

.field static final CMD_STOP_SCAN_ONLY_MODE:I = 0x200ca

.field private static final TAG:Ljava/lang/String; = "WifiStateMachinePrime"


# instance fields
.field private final mActiveModeManagers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wifi/ActiveModeManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

.field private final mContext:Landroid/content/Context;

.field private mDefaultModeManager:Lcom/android/server/wifi/DefaultModeManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

.field private mScanOnlyCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

.field private final mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field private final mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApManager:Lcom/android/server/wifi/SoftApManager;

.field private mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiNativeStatusListener:Lcom/android/server/wifi/WifiNative$StatusListener;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiInjector;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/DefaultModeManager;Lcom/android/internal/app/IBatteryStats;)V
    .locals 2
    .param p1, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p5, "defaultModeManager"    # Lcom/android/server/wifi/DefaultModeManager;
    .param p6, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 146
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mContext:Landroid/content/Context;

    .line 147
    iput-object p3, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mLooper:Landroid/os/Looper;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mHandler:Landroid/os/Handler;

    .line 149
    iput-object p4, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 150
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    .line 151
    iput-object p5, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mDefaultModeManager:Lcom/android/server/wifi/DefaultModeManager;

    .line 152
    iput-object p6, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getSelfRecovery()Lcom/android/server/wifi/SelfRecovery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiDiagnostics()Lcom/android/server/wifi/BaseWifiDiagnostics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getScanRequestProxy()Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 156
    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 157
    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiNativeStatusListener:Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiNativeStatusListener:Lcom/android/server/wifi/WifiNative$StatusListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->registerStatusListener(Lcom/android/server/wifi/WifiNative$StatusListener;)V

    .line 159
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ClientModeManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime;->updateBatteryStatsScanModeActive()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ScanOnlyModeManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mScanOnlyCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/WifiManager$SoftApCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/BaseWifiDiagnostics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiStateMachinePrime;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;
    .param p1, "x1"    # Z

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime;->updateBatteryStatsWifiState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/DefaultModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mDefaultModeManager:Lcom/android/server/wifi/DefaultModeManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ScanRequestProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    return-object v0
.end method

.method private changeMode(I)V
    .locals 1
    .param p1, "newMode"    # I

    .line 253
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(I)V

    .line 254
    return-void
.end method

.method public static synthetic lambda$enterSoftAPMode$0(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/SoftApModeConfiguration;)V
    .locals 0
    .param p1, "wifiConfig"    # Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime;->startSoftAp(Lcom/android/server/wifi/SoftApModeConfiguration;)V

    .line 192
    return-void
.end method

.method public static synthetic lambda$shutdownWifi$2(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ActiveModeManager;

    .line 227
    .local v1, "manager":Lcom/android/server/wifi/ActiveModeManager;
    invoke-interface {v1}, Lcom/android/server/wifi/ActiveModeManager;->stop()V

    .line 228
    .end local v1    # "manager":Lcom/android/server/wifi/ActiveModeManager;
    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->updateBatteryStatsWifiState(Z)V

    .line 230
    return-void
.end method

.method public static synthetic lambda$stopSoftAPMode$1(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ActiveModeManager;

    .line 203
    .local v1, "manager":Lcom/android/server/wifi/ActiveModeManager;
    instance-of v2, v1, Lcom/android/server/wifi/SoftApManager;

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "WifiStateMachinePrime"

    const-string v3, "Stopping SoftApModeManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-interface {v1}, Lcom/android/server/wifi/ActiveModeManager;->stop()V

    .line 207
    .end local v1    # "manager":Lcom/android/server/wifi/ActiveModeManager;
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->updateBatteryStatsWifiState(Z)V

    .line 209
    return-void
.end method

.method private startSoftAp(Lcom/android/server/wifi/SoftApModeConfiguration;)V
    .locals 4
    .param p1, "softapConfig"    # Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 580
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "Starting SoftApModeManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ActiveModeManager;

    .line 584
    .local v1, "manager":Lcom/android/server/wifi/ActiveModeManager;
    instance-of v2, v1, Lcom/android/server/wifi/SoftApManager;

    if-eqz v2, :cond_0

    .line 585
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "SoftApModeManager already start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 588
    .end local v1    # "manager":Lcom/android/server/wifi/ActiveModeManager;
    :cond_0
    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 592
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 593
    const-string v1, "WifiStateMachinePrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passing config to SoftApManager! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 595
    :cond_2
    const/4 v0, 0x0

    .line 598
    :goto_1
    new-instance v1, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V

    .line 600
    .local v1, "callback":Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wifi/WifiInjector;->makeSoftApManager(Landroid/net/wifi/WifiManager$SoftApCallback;Lcom/android/server/wifi/SoftApModeConfiguration;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 601
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 603
    .local v2, "manager":Lcom/android/server/wifi/ActiveModeManager;
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachinePrime$SoftApCallbackImpl;->setActiveModeManager(Lcom/android/server/wifi/ActiveModeManager;)V

    .line 604
    invoke-interface {v2}, Lcom/android/server/wifi/ActiveModeManager;->start()V

    .line 605
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 606
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachinePrime;->updateBatteryStatsWifiState(Z)V

    .line 607
    return-void
.end method

.method private updateBatteryStatsScanModeActive()V
    .locals 3

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiStateMachinePrime"

    const-string v2, "Failed to note battery stats in wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateBatteryStatsWifiState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 616
    if-eqz p1, :cond_0

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 619
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    goto :goto_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_1
    :goto_0
    goto :goto_2

    .line 627
    :goto_1
    nop

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiStateMachinePrime"

    const-string v2, "Failed to note battery stats in wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method


# virtual methods
.method public blackListWifiDevice(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 661
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->blackListWifiDevice(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public disableWifi()V
    .locals 1

    .line 218
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    .line 219
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 239
    const-string v0, "Dump of WifiStateMachinePrime"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current wifi mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumActiveModeManagers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mActiveModeManagers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ActiveModeManager;

    .line 244
    .local v1, "manager":Lcom/android/server/wifi/ActiveModeManager;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wifi/ActiveModeManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 245
    .end local v1    # "manager":Lcom/android/server/wifi/ActiveModeManager;
    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public enterClientMode()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    .line 167
    return-void
.end method

.method public enterScanOnlyMode()V
    .locals 1

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    .line 178
    return-void
.end method

.method public enterSoftAPMode(Lcom/android/server/wifi/SoftApModeConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/SoftApModeConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method protected getCurrentMode()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherSoftApSta(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SoftApManager;->getTetherSoftApSta(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerClientModeCallback(Lcom/android/server/wifi/ClientModeManager$Listener;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 136
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 137
    return-void
.end method

.method public registerScanOnlyCallback(Lcom/android/server/wifi/ScanOnlyModeManager$Listener;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    .line 129
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mScanOnlyCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    .line 130
    return-void
.end method

.method public registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 122
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 123
    return-void
.end method

.method public shutdownWifi()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$JalZ3qBo0jj0M5eeHZtmDFePWh4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$JalZ3qBo0jj0M5eeHZtmDFePWh4;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public stopSoftAPMode()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$feVeDFeTGFjAEbj0AgP01hpuoIU;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$feVeDFeTGFjAEbj0AgP01hpuoIU;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method
