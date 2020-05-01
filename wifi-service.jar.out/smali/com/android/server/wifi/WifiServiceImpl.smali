.class public Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final DBG:Z = true

.field private static final DEFAULT_SCAN_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final NUM_SOFT_AP_CALLBACKS_WARN_LIMIT:I = 0xa

.field private static final NUM_SOFT_AP_CALLBACKS_WTF_LIMIT:I = 0x14

.field private static final RUN_WITH_SCISSORS_TIMEOUT_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final VDBG:Z = false

.field private static mProject:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field mDialog:Landroid/app/AlertDialog;

.field private final mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInIdleMode:Z

.field private mIsControllerStarted:Z

.field private mIsFactoryResetOn:Z

.field private mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation
.end field

.field private final mLocalOnlyHotspotRequests:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private final mPermissionReviewRequired:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPrevApBand:I

.field private mQCSoftApNumClients:I

.field private final mQcIntentFilter:Landroid/content/IntentFilter;

.field private final mQcReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ISoftApCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartWifiApIfRequired:Z

.field mScanPending:Z

.field final mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSoftApExtendingWifi:Z

.field private mSoftApNumClients:I

.field private mSoftApState:I

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVerboseLoggingEnabled:Z

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiApState:I

.field private final mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field final mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

.field private notShowAgain:Z

.field private scanRequestCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mProject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/internal/util/AsyncChannel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p3, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;

    .line 557
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsFactoryResetOn:Z

    .line 186
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->notShowAgain:Z

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDialog:Landroid/app/AlertDialog;

    .line 204
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    .line 211
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    .line 237
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    .line 265
    const/16 v2, 0xb

    iput v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    .line 266
    iput v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    .line 267
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    .line 268
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    .line 271
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPrevApBand:I

    .line 533
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    .line 534
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 536
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcReceiver:Landroid/content/BroadcastReceiver;

    .line 2701
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$8;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$8;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 558
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 559
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 560
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 562
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 563
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 564
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiTrafficPoller()Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 565
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 566
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiCountryCode()Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 567
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 568
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachinePrime()Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 569
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->setTrafficPoller(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 570
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 571
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getScanRequestProxy()Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 572
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiSettingsStore()Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 573
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 574
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 575
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 576
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiLockManager()Lcom/android/server/wifi/WifiLockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    .line 577
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMulticastLockManager()Lcom/android/server/wifi/WifiMulticastLockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    .line 578
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiServiceHandlerThread()Landroid/os/HandlerThread;

    move-result-object v2

    .line 579
    .local v2, "wifiServiceHandlerThread":Landroid/os/HandlerThread;
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    const-string v5, "WifiService"

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    .line 580
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    const-string v5, "WifiService"

    .line 581
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, p3}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    .line 582
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiController()Lcom/android/server/wifi/WifiController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 583
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiBackupRestore()Lcom/android/server/wifi/WifiBackupRestore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 584
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 585
    sget-boolean v4, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v4, :cond_1

    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPermissionReviewRequired:Z

    .line 588
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 589
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    const-string v3, "WifiService"

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 590
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 591
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    .line 593
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getVerboseLoggingLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 595
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachinePrime()Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachinePrime;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 603
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 604
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcIntentFilter:Landroid/content/IntentFilter;

    .line 605
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->unregisterCallingAppAndStopLocalOnlyHotspot(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkDualSimActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiServiceImpl;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 167
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiServiceImpl;->handleWifiApStateChange(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->notShowAgain:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->notShowAgain:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsFactoryResetOn:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsFactoryResetOn:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->resetWifiNetworks()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->restartSoftApIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    return v0
.end method

.method private checkDualSimActive()Z
    .locals 8

    .line 620
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 621
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 623
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 624
    const-string v2, "WifiService"

    const-string v3, "checkDualSimActive() is false, tm == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v1

    .line 628
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 629
    .local v2, "phoneCount":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 630
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDualSimActive() is false, phoneCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slot0State="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v1

    .line 635
    :cond_1
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 636
    .local v3, "slot0State":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    .line 637
    .local v5, "slot1State":I
    const/4 v6, 0x5

    if-eq v3, v6, :cond_2

    if-eq v5, v6, :cond_2

    .line 639
    const-string v4, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDualSimActive() is false, slot0State="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " slot1State="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return v1

    .line 644
    :cond_2
    const-string v1, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDualSimActive() is true, phoneCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " slot0State="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " slot1State="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v4
.end method

.method private checkNetworkSettingsPermission(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3055
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 3056
    const-string v0, "allowed kmgmt"

    return-object v0

    .line 3058
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 3059
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 3060
    const-string v0, "cardinality > 4"

    return-object v0

    .line 3062
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3063
    const-string v0, "not WPA_EAP"

    return-object v0

    .line 3065
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3066
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3067
    const-string v0, "not PSK or 8021X"

    return-object v0

    .line 3070
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_5

    .line 3071
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 3072
    .local v0, "staticIpConf":Landroid/net/StaticIpConfiguration;
    if-nez v0, :cond_4

    .line 3073
    const-string v1, "null StaticIpConfiguration"

    return-object v1

    .line 3075
    :cond_4
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v1, :cond_5

    .line 3076
    const-string v1, "null static ip Address"

    return-object v1

    .line 3079
    .end local v0    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkWifiPermissionWhenPermissionReviewRequired()Z
    .locals 3

    .line 952
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPermissionReviewRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 953
    return v1

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_WIFI_WHEN_PERMISSION_REVIEW_REQUIRED"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 957
    .local v0, "result":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method private enforceChangePermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 899
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->checkNetworkSettingsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x0

    return v0

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:change_wifi_state"

    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 905
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "LocationHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method private enforceLocationPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 938
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 939
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .locals 3

    .line 875
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method private enforceNetworkStackPermission()V
    .locals 3

    .line 880
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WIFI_CREDENTIAL"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method private handleWifiApStateChange(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "currentState"    # I
    .param p2, "previousState"    # I
    .param p3, "errorCode"    # I
    .param p4, "ifaceName"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .line 1524
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiApStateChange: currentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previousState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ifaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    .line 1534
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    .line 1536
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1537
    const/4 v3, 0x2

    .line 1538
    .local v3, "errorToReport":I
    const/4 v4, 0x1

    if-ne p3, v4, :cond_0

    .line 1539
    const/4 v3, 0x1

    .line 1542
    :cond_0
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1546
    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1547
    .end local v3    # "errorToReport":I
    monitor-exit v2

    .line 1548
    return-void

    .line 1547
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1551
    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 1575
    :cond_2
    return-void

    .line 1553
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1556
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1558
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotStoppedMessageToAllLOHSRequestInfoEntriesLocked()V

    goto :goto_1

    .line 1561
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1565
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1567
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    .line 1568
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    .line 1570
    monitor-exit v2

    .line 1571
    return-void

    .line 1570
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static isHexStr(Ljava/lang/String;)Z
    .locals 6
    .param p0, "SSID"    # Ljava/lang/String;

    .line 3332
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3333
    .local v0, "ssidArray":[C
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3334
    return v2

    .line 3336
    :cond_0
    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3337
    const-string v1, "WifiService"

    const-string v3, "not even Hex ssid"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    return v2

    .line 3340
    :cond_1
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-char v4, v0, v3

    .line 3342
    .local v4, "temp":C
    const/16 v5, 0x30

    if-gt v5, v4, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 3343
    goto :goto_1

    .line 3344
    :cond_2
    const/16 v5, 0x61

    if-gt v5, v4, :cond_3

    const/16 v5, 0x66

    if-gt v4, v5, :cond_3

    .line 3345
    goto :goto_1

    .line 3346
    :cond_3
    const/16 v5, 0x41

    if-gt v5, v4, :cond_4

    const/16 v5, 0x46

    if-gt v4, v5, :cond_4

    .line 3347
    nop

    .line 3340
    .end local v4    # "temp":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3350
    .restart local v4    # "temp":C
    :cond_4
    const-string v1, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not valid hex string: invalid char: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    return v2

    .line 3354
    .end local v4    # "temp":C
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public static isSSIDValid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "SSID"    # Ljava/lang/String;

    .line 3311
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, ""

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 3315
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3316
    .local v1, "length":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 3317
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, -0x1

    .line 3318
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    .line 3320
    add-int/lit8 v3, v1, -0x2

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 3321
    const-string v2, "WifiService"

    const-string v3, "quotation ssid length more than 32!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    return v0

    .line 3325
    :cond_1
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isHexStr(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3326
    return v0

    .line 3328
    :cond_2
    return v2

    .line 3312
    .end local v1    # "length":I
    :cond_3
    :goto_0
    const-string v1, "WifiService"

    const-string v2, "SSID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    return v0
.end method

.method public static isStaValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3297
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 3298
    .local v0, "configValid":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3299
    return v1

    .line 3302
    :cond_0
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3303
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->isSSIDValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3304
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID is invalid, SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    return v1

    .line 3307
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3050
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 3051
    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static synthetic lambda$getScanResults$7(Lcom/android/server/wifi/WifiServiceImpl;Ljava/util/List;)V
    .locals 1
    .param p1, "scanResults"    # Ljava/util/List;

    .line 2351
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanRequestProxy;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2352
    return-void
.end method

.method public static synthetic lambda$getWifiApConfiguration$5(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    .line 1848
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 1849
    return-void
.end method

.method public static synthetic lambda$getWifiApEnabledState$1(Lcom/android/server/wifi/WifiServiceImpl;Landroid/util/MutableInt;)V
    .locals 1
    .param p1, "apState"    # Landroid/util/MutableInt;

    .line 1128
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    iput v0, p1, Landroid/util/MutableInt;->value:I

    .line 1129
    return-void
.end method

.method public static synthetic lambda$registerSoftApCallback$3(Lcom/android/server/wifi/WifiServiceImpl;ILandroid/net/wifi/ISoftApCallback;)V
    .locals 4
    .param p1, "callbackIdentifier"    # I
    .param p2, "callback"    # Landroid/net/wifi/ISoftApCallback;

    .line 1475
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1478
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many soft AP callbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 1480
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many soft AP callbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_1
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/net/wifi/ISoftApCallback;->onStateChanged(II)V

    .line 1486
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    invoke-interface {p2, v0}, Landroid/net/wifi/ISoftApCallback;->onNumClientsChanged(I)V

    .line 1487
    const-string v0, ""

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    invoke-interface {p2, v0, v1}, Landroid/net/wifi/ISoftApCallback;->onStaConnected(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    goto :goto_1

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSoftApCallback: remote exception -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$setWifiApConfiguration$6(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 1880
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1881
    return-void
.end method

.method public static synthetic lambda$startScan$0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;ILjava/lang/String;)V
    .locals 1
    .param p1, "scanSuccess"    # Lcom/android/server/wifi/util/GeneralUtil$Mutable;
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wifi/ScanRequestProxy;->startScan(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 796
    return-void
.end method

.method public static synthetic lambda$unregisterSoftApCallback$4(Lcom/android/server/wifi/WifiServiceImpl;I)V
    .locals 2
    .param p1, "callbackIdentifier"    # I

    .line 1512
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    return-void
.end method

.method public static synthetic lambda$updateInterfaceIpState$2(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1153
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1154
    return-void
.end method

.method static logAndReturnFalse(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3045
    const-string v0, "WifiService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    const/4 v0, 0x0

    return v0
.end method

.method private registerForBroadcasts()V
    .locals 4

    .line 2784
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2785
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2786
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2787
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2789
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2791
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2792
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2793
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2795
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2797
    .local v1, "trackEmergencyCallState":Z
    if-eqz v1, :cond_0

    .line 2798
    const-string v2, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2800
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2802
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v2

    .line 2803
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2804
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2805
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$10;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$10;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2824
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 5

    .line 2770
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$9;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    .line 2777
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi_scan_always_enabled"

    .line 2778
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2777
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2781
    return-void
.end method

.method private resetWifiNetworks()V
    .locals 5

    .line 2987
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2988
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 2989
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2988
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2990
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    .line 2991
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2992
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(ILjava/lang/String;)Z

    .line 2993
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 2996
    .end local v0    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    return-void
.end method

.method private restartSoftApIfNeeded()V
    .locals 3

    .line 506
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 507
    const-string v0, "WifiService"

    const-string v1, "Repeater mode: not restarting SoftAP as Hotspot is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 511
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Repeater mode: Stop SoftAP."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    .line 513
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    .line 515
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 531
    .local v1, "intent":Landroid/content/Intent;
    return-void
.end method

.method private restoreNetworks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 3146
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_0

    .line 3147
    const-string v0, "WifiService"

    const-string v1, "Backup data parse failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    return-void

    .line 3150
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3151
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 3153
    .local v2, "networkId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3154
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore network failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    goto :goto_0

    .line 3158
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    .line 3159
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networkId":I
    goto :goto_0

    .line 3160
    :cond_2
    return-void
.end method

.method private sendFailedScanBroadcast()V
    .locals 5

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 819
    .local v0, "callingIdentity":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 821
    const-string v3, "resultsUpdated"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    nop

    .line 828
    return-void

    .line 825
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V
    .locals 3
    .param p1, "arg1"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .line 1585
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1587
    .local v1, "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotFailedMessage(I)V

    .line 1588
    invoke-virtual {v1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->unlinkDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    goto :goto_1

    .line 1589
    :catch_0
    move-exception v2

    .line 1592
    .end local v1    # "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :goto_1
    goto :goto_0

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1596
    return-void
.end method

.method private sendHotspotStartedMessageToAllLOHSRequestInfoEntriesLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1629
    .local v1, "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotStartedMessage(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    goto :goto_1

    .line 1630
    :catch_0
    move-exception v2

    .line 1633
    .end local v1    # "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :goto_1
    goto :goto_0

    .line 1634
    :cond_0
    return-void
.end method

.method private sendHotspotStoppedMessageToAllLOHSRequestInfoEntriesLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .line 1606
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1608
    .local v1, "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotStoppedMessage()V

    .line 1609
    invoke-virtual {v1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->unlinkDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    goto :goto_1

    .line 1610
    :catch_0
    move-exception v2

    .line 1613
    .end local v1    # "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :goto_1
    goto :goto_0

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1617
    return-void
.end method

.method private startConsentUi(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "intentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2739
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 2740
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkWifiPermissionWhenPermissionReviewRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2745
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2748
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2746
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2749
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p2, :cond_1

    .line 2755
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2756
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2758
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2759
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2760
    const/4 v2, 0x1

    return v2

    .line 2750
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2761
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2762
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2741
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private startDualSapMode(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "apConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .line 3503
    if-nez p1, :cond_0

    .line 3504
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 3507
    :cond_0
    const/4 v0, 0x2

    if-eqz p2, :cond_1

    const-string v1, "persist.vendor.wifi.softap.dualband"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3508
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPrevApBand:I

    .line 3509
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto :goto_0

    .line 3510
    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v1, v0, :cond_2

    .line 3511
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPrevApBand:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3515
    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-eq v2, v0, :cond_3

    .line 3516
    const-string v0, "WifiService"

    const-string v2, "Continue with Single SAP Mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    return v1

    .line 3520
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "startDualSapMode uid=% enable=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3522
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3523
    const-string v1, "WifiService"

    const-string v2, "DUAL Sap Mode already enabled. Do nothing!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    return v0

    .line 3527
    :cond_4
    iget v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    .line 3530
    .local v2, "apEnabled":Z
    :goto_1
    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 3531
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    invoke-virtual {v3, v4, v1, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 3533
    :cond_6
    if-eqz p2, :cond_7

    .line 3534
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v3, 0x2601f

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 3536
    :cond_7
    return v0
.end method

.method private startSoftApInRepeaterMode(I)Z
    .locals 8
    .param p1, "mode"    # I

    .line 3558
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3559
    .local v0, "currentStaConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repeater mode: CurrentStaConfig - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentStaShareThisAp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3561
    new-instance v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    .line 3562
    .local v1, "softApConfig":Lcom/android/server/wifi/SoftApModeConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getWifiConfigManager()Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v3

    .line 3563
    .local v3, "wifiConfigManager":Lcom/android/server/wifi/WifiConfigManager;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkWithPassword(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3564
    iget-object v4, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3565
    iget-object v4, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3566
    iget-object v4, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 3567
    iget-object v4, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3568
    iget-object v4, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3569
    iget-object v4, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3570
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3571
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    iget-object v5, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v5, :cond_0

    .line 3572
    iget-object v5, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToChannel(I)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 3574
    :cond_0
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Repeater mode: startSoftAp with config - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v6, 0x2600a

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v2, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    .line 3576
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 3577
    return v7

    .line 3579
    .end local v1    # "softApConfig":Lcom/android/server/wifi/SoftApModeConfiguration;
    .end local v3    # "wifiConfigManager":Lcom/android/server/wifi/WifiConfigManager;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 3580
    return v2
.end method

.method private startSoftApInternal(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "mode"    # I

    .line 1255
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "startSoftApInternal uid=% mode=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 1256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1259
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->startDualSapMode(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1261
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->startSoftApInRepeaterMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    return v0

    .line 1266
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/server/wifi/WifiApConfigStore;->validateApWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1271
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "Invalid WifiConfiguration"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return v1

    .line 1267
    :cond_2
    :goto_0
    new-instance v2, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-direct {v2, p2, p1}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    .line 1268
    .local v2, "softApConfig":Lcom/android/server/wifi/SoftApModeConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    .line 1269
    return v0
.end method

.method private stopSoftApInternal()Z
    .locals 3

    .line 1317
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "stopSoftApInternal uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1319
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1320
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startDualSapMode(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1322
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 1323
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v2, 0x2600a

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 1324
    const/4 v0, 0x1

    return v0
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 3092
    if-nez p0, :cond_0

    .line 3093
    const-string v0, "null"

    return-object v0

    .line 3095
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3096
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3097
    const/4 v1, 0x0

    move v2, v1

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3098
    const-string v3, " %02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3100
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unregisterCallingAppAndStopLocalOnlyHotspot(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 4
    .param p1, "request"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1773
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "unregisterCallingAppAndStopLocalOnlyHotspot pid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->getPid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1775
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->getPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1777
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "LocalOnlyHotspotRequestInfo not found to remove"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1778
    monitor-exit v0

    return-void

    .line 1781
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1782
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1783
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1787
    .local v1, "identity":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1789
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    goto :goto_0

    .line 1789
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1792
    .end local v1    # "identity":J
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1793
    return-void

    .line 1792
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private updateInterfaceIpStateInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1159
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1161
    const/4 v1, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1162
    .local v2, "previousMode":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1163
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 1165
    :cond_0
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInterfaceIpState: ifaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " previous mode= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1212
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    goto :goto_1

    .line 1171
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    .line 1174
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1175
    monitor-exit v0

    return-void

    .line 1178
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotStartedMessageToAllLOHSRequestInfoEntriesLocked()V

    .line 1179
    goto :goto_2

    .line 1185
    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1187
    goto :goto_2

    .line 1189
    :pswitch_2
    const-string v4, "WifiService"

    const-string v5, "IP mode config error - need to clean up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1191
    const-string v4, "WifiService"

    const-string v5, "no LOHS requests, stop softap"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    goto :goto_0

    .line 1194
    :cond_2
    const-string v4, "WifiService"

    const-string v5, "we have LOHS requests, clean them up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1200
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1201
    goto :goto_2

    .line 1203
    :pswitch_3
    if-nez p1, :cond_3

    .line 1207
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1208
    monitor-exit v0

    return-void

    .line 1212
    :goto_1
    const-string v3, "updateInterfaceIpStateInternal: unknown mode %"

    invoke-interface {v1, v3}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v3, p2

    invoke-interface {v1, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1214
    .end local v2    # "previousMode":Ljava/lang/Integer;
    :cond_3
    :goto_2
    monitor-exit v0

    .line 1215
    return-void

    .line 1214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static verifyCert(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p0, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2208
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2210
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v1

    .line 2211
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 2212
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2211
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 2213
    .local v2, "path":Ljava/security/cert/CertPath;
    const-string v4, "AndroidCAStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 2214
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2215
    new-instance v5, Ljava/security/cert/PKIXParameters;

    invoke-direct {v5, v4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 2216
    .local v5, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v5, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 2217
    invoke-virtual {v1, v2, v5}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 2218
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 2933
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 2934
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "acquireMulticastLock uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2935
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMulticastLockManager;->acquireLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2936
    return-void
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .line 2900
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "acquireWifiLock uid=% lockMode=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    .line 2902
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2903
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/android/server/wifi/WifiLockManager;->acquireWifiLock(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2904
    const/4 v0, 0x1

    return v0

    .line 2906
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2154
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2155
    return v1

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "addOrUpdateNetwork uid=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2161
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2162
    nop

    .line 2163
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->convertFromWifiConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    .line 2164
    .local v0, "passpointConfig":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2165
    const-string v2, "WifiService"

    const-string v3, "Missing credential for Passpoint profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    return v1

    .line 2169
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2170
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 2169
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 2171
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2172
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 2171
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 2173
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2174
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    .line 2173
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    .line 2175
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2176
    const-string v2, "WifiService"

    const-string v3, "Failed to add Passpoint profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    return v1

    .line 2180
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 2183
    .end local v0    # "passpointConfig":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_3
    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isStaValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2186
    const-string v0, "addOrUpdateNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2188
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2186
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v1, :cond_4

    .line 2190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto :goto_0

    .line 2192
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2194
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_5

    .line 2195
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 2197
    :cond_5
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return v1

    .line 2201
    :cond_6
    const-string v0, "WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return v1
.end method

.method public addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2373
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2374
    const/4 v0, 0x0

    return v0

    .line 2376
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "addorUpdatePasspointConfiguration uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2377
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2381
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2381
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdatePasspointConfig(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z

    move-result v0

    return v0

    .line 2379
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blackListWifiDevice(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 3259
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    const/4 v0, 0x0

    return v0

    .line 3262
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blackListWifiDevice: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3263
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3262
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wifi/WifiStateMachinePrime;->blackListWifiDevice(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public checkAndStartWifi()V
    .locals 5

    .line 661
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-virtual {v0}, Lcom/android/server/wifi/FrameworkFacade;->inStorageManagerCryptKeeperBounce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const-string v0, "WifiService"

    const-string v1, "Device still encrypted. Need to restart SystemServer.  Do not start wifi."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 668
    .local v0, "wifiEnabled":Z
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    if-eqz v0, :cond_1

    const-string v3, "enabled"

    goto :goto_0

    :cond_1
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    .line 672
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$5;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 729
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    .line 730
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    .line 732
    const-string v1, "WifiService"

    const-string v2, "=qcdbg= mWifiStateMachine.syncInitialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncInitialize(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 734
    const-string v1, "WifiService"

    const-string v2, "Failed to initialize WifiStateMachine"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    .line 737
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    .line 741
    if-eqz v0, :cond_3

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    goto :goto_1

    .line 744
    :catch_0
    move-exception v1

    .line 748
    :cond_3
    :goto_1
    return-void
.end method

.method public deauthenticateNetwork(JZ)V
    .locals 3
    .param p1, "holdoff"    # J
    .param p3, "ess"    # Z

    .line 2458
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "deauthenticateNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2459
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V

    .line 2460
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2693
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2694
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    return-void

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "disableEphemeralNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2698
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 2699
    return-void
.end method

.method public disableNetwork(ILjava/lang/String;)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2275
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2276
    return v1

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "disableNetwork uid=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2281
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2282
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    return v0

    .line 2284
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return v1
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1906
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    return-void

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "disconnect uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1910
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1911
    return-void
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 3387
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppAddBootstrapQrCode(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapGenerate(Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3399
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppBootstrapGenerate(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapRemove(I)I
    .locals 2
    .param p1, "bootstrap_id"    # I

    .line 3423
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppBootstrapRemove(Lcom/android/internal/util/AsyncChannel;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "curve"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiry"    # I

    .line 3463
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->syncDppConfiguratorAdd(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorGetKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 3499
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppConfiguratorGetKey(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppConfiguratorRemove(I)I
    .locals 2
    .param p1, "config_id"    # I

    .line 3476
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppConfiguratorRemove(Lcom/android/internal/util/AsyncChannel;I)I

    move-result v0

    return v0
.end method

.method public dppGetUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "bootstrap_id"    # I

    .line 3411
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppGetUri(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppListen(Ljava/lang/String;IZZ)I
    .locals 6
    .param p1, "frequency"    # Ljava/lang/String;
    .param p2, "dpp_role"    # I
    .param p3, "qr_mutual"    # Z
    .param p4, "netrole_ap"    # Z

    .line 3440
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine;->syncDppListen(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public dppStartAuth(Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3488
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppStartAuth(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppStopListen()V
    .locals 2

    .line 3449
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->dppStopListen(Lcom/android/internal/util/AsyncChannel;)V

    .line 3450
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2835
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2837
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    return-void

    .line 2842
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    const-string v1, "wifiMetricsProto"

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2844
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    .line 2845
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2846
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lez v1, :cond_2

    const-string v1, "ipclient"

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2848
    array-length v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 2849
    .local v1, "ipClientArgs":[Ljava/lang/String;
    array-length v3, v1

    invoke-static {p3, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2850
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpClient(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2851
    .end local v1    # "ipClientArgs":[Ljava/lang/String;
    goto/16 :goto_1

    :cond_2
    if-eqz p3, :cond_4

    array-length v1, p3

    if-lez v1, :cond_4

    const-string v1, "WifiScoreReport"

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2852
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiScoreReport()Lcom/android/server/wifi/WifiScoreReport;

    move-result-object v0

    .line 2853
    .local v0, "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScoreReport;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2854
    .end local v0    # "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    :cond_3
    goto/16 :goto_1

    .line 2855
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wi-Fi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verbose logging is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_5

    const-string v2, "on"

    goto :goto_0

    :cond_5
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stay-awake conditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "stay_on_while_plugged_in"

    .line 2858
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2857
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInIdleMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScanPending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2864
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2865
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2866
    const-string v0, "Locks held:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLockManager;->dump(Ljava/io/PrintWriter;)V

    .line 2868
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2869
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiMulticastLockManager;->dump(Ljava/io/PrintWriter;)V

    .line 2870
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2871
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachinePrime;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2872
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2873
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2874
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2875
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    .line 2876
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2877
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2878
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiBackupRestore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2879
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringParams: settings put global wifi_score_params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 2881
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getScoringParams()Lcom/android/server/wifi/ScoringParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2880
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2883
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiScoreReport()Lcom/android/server/wifi/WifiScoreReport;

    move-result-object v0

    .line 2884
    .restart local v0    # "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    if-eqz v0, :cond_6

    .line 2885
    const-string v1, "WifiScoreReport:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScoreReport;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2888
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2890
    .end local v0    # "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    :goto_1
    return-void
.end method

.method public enableNetwork(IZLjava/lang/String;)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2250
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2251
    return v1

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "enableNetwork uid=% disableOthers=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2256
    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2258
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2259
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    return v0

    .line 2262
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    return v1
.end method

.method public enablePktLog(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 3364
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3365
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enablePktLog(Z)Z

    move-result v0

    return v0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2648
    if-eqz p1, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableTdls uid=% enable=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2652
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 2653
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 2654
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 2655
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2656
    return-void

    .line 2649
    .end local v0    # "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2661
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableTdlsWithMacAddress uid=% enable=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2662
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2663
    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2664
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2665
    if-eqz p1, :cond_0

    .line 2669
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 2670
    return-void

    .line 2666
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteMacAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .line 2956
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2957
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2958
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableVerboseLogging uid=% verbose=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p1

    .line 2960
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2961
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_verbose_logging_enabled"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 2963
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 2964
    return-void
.end method

.method enableVerboseLoggingInternal(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 2967
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    .line 2968
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 2969
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLockManager;->enableVerboseLogging(I)V

    .line 2970
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMulticastLockManager;->enableVerboseLogging(I)V

    .line 2971
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiInjector;->enableVerboseLogging(I)V

    .line 2972
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiController;->enableVerboseLogging(I)V

    .line 2973
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 3110
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3111
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableWifiConnectivityManager uid=% enabled=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3113
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3114
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableWifiConnectivityManager(Z)V

    .line 3115
    return-void
.end method

.method public enableWifiCoverageExtendFeature(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3589
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3590
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3591
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableWifiCoverageExtendFeature uid=% enable=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3593
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3594
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_coverage_extend_feature_enabled"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 3595
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3001
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3002
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    return-void

    .line 3005
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "factoryReset uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3006
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3007
    return-void

    .line 3010
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_tethering"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3013
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z

    .line 3016
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3018
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3019
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->resetWifiNetworks()V

    goto :goto_0

    .line 3021
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsFactoryResetOn:Z

    .line 3024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3027
    goto :goto_0

    .line 3025
    :catch_0
    move-exception v0

    .line 3041
    :cond_4
    :goto_0
    return-void
.end method

.method public getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2117
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2118
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMatchingPasspointConfigurations uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2121
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2123
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "capaType"    # Ljava/lang/String;

    .line 2463
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2048
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2049
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getConfiguredNetworks uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_2

    .line 2053
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 2054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2053
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2055
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 2056
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 2058
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    goto :goto_0

    .line 2059
    :cond_2
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2295
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2297
    .local v0, "uid":I
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 2298
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "getConnectionInfo uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2300
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2302
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    .local v3, "result":Landroid/net/wifi/WifiInfo;
    const/4 v4, 0x1

    .line 2304
    .local v4, "hideDefaultMacAddress":Z
    const/4 v5, 0x1

    .line 2307
    .local v5, "hideBssidAndSsid":Z
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getLocalMacAddressPermission(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 2309
    const/4 v4, 0x0

    .line 2311
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2312
    const/4 v5, 0x0

    goto :goto_0

    .line 2315
    :catch_0
    move-exception v6

    goto :goto_1

    .line 2313
    :catch_1
    move-exception v6

    .line 2314
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "WifiService"

    const-string v8, "Error checking receiver permission"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2316
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 2317
    :goto_1
    if-eqz v4, :cond_2

    .line 2318
    const-string v6, "02:00:00:00:00:00"

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 2320
    :cond_2
    if-eqz v5, :cond_3

    .line 2321
    const-string v6, "02:00:00:00:00:00"

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2322
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 2324
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    .line 2325
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConnectionInfo: hideBssidAndSSid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", hideDefaultMacAddress="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/wifi/WifiLog;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2328
    :cond_5
    nop

    .line 2330
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2328
    return-object v3

    .line 2330
    .end local v3    # "result":Landroid/net/wifi/WifiInfo;
    .end local v4    # "hideDefaultMacAddress":Z
    .end local v5    # "hideBssidAndSsid":Z
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .line 2489
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 2490
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getCountryCode uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 2494
    .local v0, "country":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 3

    .line 3084
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3085
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3086
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getCurrentNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3088
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 3

    .line 836
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 837
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getCurrentNetworkWpsNfcConfigurationToken uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 841
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2534
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2535
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getDhcpInfo uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2538
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 2540
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v1, Landroid/net/DhcpInfo;

    invoke-direct {v1}, Landroid/net/DhcpInfo;-><init>()V

    .line 2542
    .local v1, "info":Landroid/net/DhcpInfo;
    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 2543
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 2544
    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 2545
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    .line 2544
    invoke-static {v2}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    iput v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2548
    :cond_1
    iget-object v2, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 2549
    iget-object v2, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    check-cast v2, Ljava/net/Inet4Address;

    invoke-static {v2}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    iput v2, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 2552
    :cond_2
    const/4 v2, 0x0

    .line 2553
    .local v2, "dnsFound":I
    iget-object v3, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2554
    .local v4, "dns":Ljava/net/InetAddress;
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    .line 2555
    if-nez v2, :cond_3

    .line 2556
    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v5

    iput v5, v1, Landroid/net/DhcpInfo;->dns1:I

    goto :goto_1

    .line 2558
    :cond_3
    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v5

    iput v5, v1, Landroid/net/DhcpInfo;->dns2:I

    .line 2560
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    goto :goto_2

    .line 2562
    .end local v4    # "dns":Ljava/net/InetAddress;
    :cond_4
    goto :goto_0

    .line 2563
    :cond_5
    :goto_2
    iget-object v3, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 2564
    .local v3, "serverAddress":Ljava/net/Inet4Address;
    if-eqz v3, :cond_6

    .line 2565
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    iput v4, v1, Landroid/net/DhcpInfo;->serverAddress:I

    .line 2567
    :cond_6
    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v4, v1, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 2569
    return-object v1
.end method

.method public getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation

    .line 2136
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2137
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMatchingOsuProviders uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2144
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingOsuProviders(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2142
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 2095
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2096
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMatchingWifiConfig uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 2101
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPasspointConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 2413
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2414
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getPasspointConfigurations uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2421
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPasspointConfigs(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2419
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2070
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 2071
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2072
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getPrivilegedConfiguredNetworks uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_2

    .line 2076
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2077
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2078
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 2079
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 2081
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    goto :goto_0

    .line 2082
    :cond_2
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 2341
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2343
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2344
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 2345
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "getScanResults uid=%"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2348
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V

    .line 2349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2350
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachineHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/util/List;)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2353
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 2354
    const-string v5, "WifiService"

    const-string v6, "Failed to post runnable to fetch scan results"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    :cond_1
    nop

    .line 2360
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2356
    return-object v3

    .line 2360
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "success":Z
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 2357
    :catch_0
    move-exception v3

    .line 2358
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2360
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2358
    return-object v4

    .line 2360
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSupportedFeatures()I
    .locals 3

    .line 1942
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1943
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getSupportedFeatures uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isHalStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1948
    return v1

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_2

    .line 1952
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    return v0

    .line 1954
    :cond_2
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    return v1
.end method

.method public getTetherSoftApSta(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .line 3270
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTetherSoftApSta: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3270
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime;->getTetherSoftApSta(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerboseLoggingLevel()I
    .locals 4

    .line 2977
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2978
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getVerboseLoggingLevel uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2981
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_verbose_logging_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 1834
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1837
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "getWifiApConfiguration uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1846
    new-instance v1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/util/GeneralUtil$Mutable;-><init>()V

    .line 1847
    .local v1, "config":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachineHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 1850
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 1851
    iget-object v3, v1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    return-object v3

    .line 1853
    :cond_0
    const-string v3, "WifiService"

    const-string v4, "Failed to post runnable to fetch ap config"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-object v3

    .line 1839
    .end local v1    # "config":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "success":Z
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not allowed to read or update stored WiFi Ap config (uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWifiApEnabledState()I
    .locals 5

    .line 1120
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getWifiApEnabledState uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1126
    :cond_0
    new-instance v0, Landroid/util/MutableInt;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 1127
    .local v0, "apState":Landroid/util/MutableInt;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Tk4v3H_jLeO4POzFwYzi9LRyPtE;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Tk4v3H_jLeO4POzFwYzi9LRyPtE;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/util/MutableInt;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1130
    iget v1, v0, Landroid/util/MutableInt;->value:I

    return v1
.end method

.method public getWifiEnabledState()I
    .locals 3

    .line 1103
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1104
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getWifiEnabledState uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiMacFromNvItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3255
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiServiceMessenger(Ljava/lang/String;)Landroid/os/Messenger;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2678
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2679
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getWifiServiceMessenger uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2685
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0

    .line 2682
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Could not create wifi service messenger"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleIdleModeChanged()V
    .locals 3

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "doScan":Z
    monitor-enter p0

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    .line 851
    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-eq v2, v1, :cond_0

    .line 852
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    .line 853
    if-nez v1, :cond_0

    .line 854
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    if-eqz v2, :cond_0

    .line 855
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    .line 856
    const/4 v0, 0x1

    .line 860
    .end local v1    # "idle":Z
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    if-eqz v0, :cond_1

    .line 865
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Ljava/lang/String;)Z

    .line 867
    :cond_1
    return-void

    .line 860
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleUserStop(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 759
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserStop(I)V

    .line 760
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 751
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserSwitch(I)V

    .line 752
    return-void
.end method

.method public handleUserUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 755
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserUnlock(I)V

    .line 756
    return-void
.end method

.method public initializeMulticastFiltering()V
    .locals 3

    .line 2926
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 2927
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "initializeMulticastFiltering uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2928
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->initializeFiltering()V

    .line 2929
    return-void
.end method

.method public isCurrentStaShareThisAp()Z
    .locals 2

    .line 3545
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3547
    .local v0, "currentStaConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiCoverageExtendFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3549
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    if-eqz v1, :cond_0

    .line 3551
    const/4 v1, 0x1

    return v1

    .line 3554
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDualBandSupported()Z
    .locals 3

    .line 2500
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "isDualBandSupported uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2504
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isExtendingWifi()Z
    .locals 1

    .line 3541
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 3

    .line 2947
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2948
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "isMulticastEnabled uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2951
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->isMulticastEnabled()Z

    move-result v0

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 3

    .line 1894
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1895
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "isScanAlwaysAvailable uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public isWifiCoverageExtendFeatureEnabled()Z
    .locals 4

    .line 3584
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3585
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_coverage_extend_feature_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 2447
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "matchProviderWithCurrentNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2448
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public needs5GHzToAnyApBandConversion()Z
    .locals 3

    .line 2516
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2518
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "needs5GHzToAnyApBandConversion uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2521
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2829
    new-instance v0, Lcom/android/server/wifi/WifiShellCommand;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiShellCommand;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/WifiShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2831
    return-void
.end method

.method public queryPasspointIcon(JLjava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .line 2431
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2432
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "queryPasspointIcon uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2433
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z

    .line 2438
    return-void

    .line 2435
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reassociate(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1930
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    return-void

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "reassociate uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1934
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1935
    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1918
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "reconnect uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1922
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand(Landroid/os/WorkSource;)V

    .line 1923
    return-void
.end method

.method registerLOHSForTest(ILcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "request"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1643
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    return-void
.end method

.method public registerSoftApCallback(Landroid/os/IBinder;Landroid/net/wifi/ISoftApCallback;I)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .param p3, "callbackIdentifier"    # I

    .line 1444
    if-eqz p1, :cond_2

    .line 1447
    if-eqz p2, :cond_1

    .line 1451
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1452
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "registerSoftApCallback uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1457
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$7;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/wifi/WifiServiceImpl$7;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;I)V

    .line 1467
    .local v0, "dr":Landroid/os/IBinder$DeathRecipient;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    nop

    .line 1474
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILandroid/net/wifi/ISoftApCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1493
    return-void

    .line 1468
    :catch_0
    move-exception v1

    .line 1469
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on linkToDeath - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void

    .line 1448
    .end local v0    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseMulticastLock()V
    .locals 3

    .line 2940
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 2941
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "releaseMulticastLock uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2942
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->releaseLock()V

    .line 2943
    return-void
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2917
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "releaseWifiLock uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2918
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2919
    const/4 v0, 0x1

    return v0

    .line 2921
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeNetwork(ILjava/lang/String;)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2228
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2229
    return v1

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "removeNetwork uid=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2233
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    return v0

    .line 2236
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    return v1
.end method

.method public removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2393
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2394
    const/4 v0, 0x0

    return v0

    .line 2396
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "removePasspointConfiguration uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2397
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2401
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemovePasspointConfig(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2399
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 39

    .line 1974
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1975
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 1976
    iget-object v1, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "reportActivityInfo uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1978
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->getSupportedFeatures()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1979
    return-object v2

    .line 1982
    :cond_1
    const/4 v1, 0x0

    .line 1983
    .local v1, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_8

    .line 1984
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v3

    .line 1985
    .local v3, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    if-eqz v3, :cond_6

    .line 1986
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.controller.idle"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 1988
    .local v4, "rxIdleCurrent":D
    iget-object v6, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.controller.rx"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 1990
    .local v6, "rxCurrent":D
    iget-object v8, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.controller.tx"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 1992
    .local v8, "txCurrent":D
    iget-object v10, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v11, "wifi.controller.voltage"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 1994
    .local v10, "voltage":D
    iget v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v12, v13

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v12, v13

    int-to-long v14, v12

    .line 1996
    .local v14, "rxIdleTime":J
    iget-object v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 1997
    iget-object v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    array-length v12, v12

    new-array v12, v12, [J

    .line 1998
    .local v12, "txTimePerLevel":[J
    nop

    .local v13, "i":I
    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_2

    .line 1999
    iget-object v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    aget v2, v2, v13

    move-object/from16 v28, v1

    int-to-long v1, v2

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v28, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    aput-wide v1, v12, v13

    .line 1998
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v28

    const/4 v2, 0x0

    goto :goto_0

    .line 2004
    .end local v13    # "i":I
    .end local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_2
    move-object/from16 v28, v1

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_1

    .end local v12    # "txTimePerLevel":[J
    .end local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_3
    move-object/from16 v28, v1

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    new-array v12, v13, [J

    .restart local v12    # "txTimePerLevel":[J
    :goto_1
    move-object v1, v12

    .line 2006
    .end local v12    # "txTimePerLevel":[J
    .local v1, "txTimePerLevel":[J
    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    int-to-double v12, v2

    mul-double/2addr v12, v8

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    move-object/from16 v30, v1

    int-to-double v0, v2

    .end local v1    # "txTimePerLevel":[J
    .local v30, "txTimePerLevel":[J
    mul-double/2addr v0, v6

    add-double/2addr v12, v0

    long-to-double v0, v14

    mul-double/2addr v0, v4

    add-double/2addr v12, v0

    mul-double/2addr v12, v10

    double-to-long v0, v12

    .line 2009
    .local v0, "energyUsed":J
    const-wide/16 v12, 0x0

    cmp-long v2, v14, v12

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    if-ltz v2, :cond_5

    cmp-long v2, v0, v12

    if-gez v2, :cond_4

    goto :goto_2

    .line 2027
    :cond_4
    move-wide/from16 v31, v4

    move-object/from16 v13, v30

    goto/16 :goto_3

    .line 2011
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2012
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " rxIdleCur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " rxCur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " txCur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " voltage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " on_time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " tx_time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " tx_time_per_level="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v31, v4

    move-object/from16 v13, v30

    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "rxIdleCurrent":D
    .end local v30    # "txTimePerLevel":[J
    .local v13, "txTimePerLevel":[J
    .local v31, "rxIdleCurrent":D
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rx_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rxIdleTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " scan_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " energy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " reportActivityInfo: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/wifi/WifiServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v16

    iget v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    move-wide/from16 v33, v6

    int-to-long v5, v12

    .end local v6    # "rxCurrent":D
    .local v33, "rxCurrent":D
    iget v7, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    move-wide/from16 v35, v8

    int-to-long v7, v7

    .end local v8    # "txCurrent":D
    .local v35, "txCurrent":D
    iget v9, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    move-object/from16 v37, v3

    int-to-long v3, v9

    .end local v3    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    .local v37, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    move-object v9, v13

    move-object v13, v2

    .end local v13    # "txTimePerLevel":[J
    .local v9, "txTimePerLevel":[J
    move-wide/from16 v29, v14

    move-wide/from16 v14, v16

    .end local v14    # "rxIdleTime":J
    .local v29, "rxIdleTime":J
    const/4 v12, 0x3

    move/from16 v16, v12

    move-wide/from16 v17, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v29

    move-wide/from16 v26, v0

    invoke-direct/range {v13 .. v27}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    move-object v1, v2

    .end local v0    # "energyUsed":J
    .end local v9    # "txTimePerLevel":[J
    .end local v10    # "voltage":D
    .end local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v29    # "rxIdleTime":J
    .end local v31    # "rxIdleCurrent":D
    .end local v33    # "rxCurrent":D
    .end local v35    # "txCurrent":D
    .local v1, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_4

    .line 2031
    .end local v37    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    .restart local v3    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :cond_6
    move-object/from16 v28, v1

    move-object/from16 v37, v3

    .end local v3    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    .restart local v37    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2032
    return-object v1

    .line 2034
    :cond_7
    const/4 v0, 0x0

    return-object v0

    .line 2037
    .end local v37    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :cond_8
    move-object/from16 v28, v1

    move-object v0, v2

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-object v0
.end method

.method public requestActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "result"    # Landroid/os/ResultReceiver;

    .line 1961
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1962
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 1963
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "requestActivityInfo uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1965
    :cond_0
    const-string v1, "controller_activity"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1966
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1967
    return-void
.end method

.method public restoreBackupData([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 3169
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3170
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "restoreBackupData uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3171
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 3172
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    return-void

    .line 3176
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Restoring backup data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 3178
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiBackupRestore;->retrieveConfigurationsFromBackupData([B)Ljava/util/List;

    move-result-object v0

    .line 3179
    .local v0, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->restoreNetworks(Ljava/util/List;)V

    .line 3180
    const-string v1, "WifiService"

    const-string v2, "Restored backup data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    return-void
.end method

.method public restoreSupplicantBackupData([B[B)V
    .locals 3
    .param p1, "supplicantData"    # [B
    .param p2, "ipConfigData"    # [B

    .line 3191
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3192
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "restoreSupplicantBackupData uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3193
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 3194
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    return-void

    .line 3198
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Restoring supplicant backup data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 3200
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiBackupRestore;->retrieveConfigurationsFromSupplicantBackupData([B[B)Ljava/util/List;

    move-result-object v0

    .line 3202
    .local v0, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->restoreNetworks(Ljava/util/List;)V

    .line 3203
    const-string v1, "WifiService"

    const-string v2, "Restored supplicant backup data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-void
.end method

.method public retrieveBackupData()[B
    .locals 4

    .line 3124
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3125
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "retrieveBackupData uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3126
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 3127
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const/4 v0, 0x0

    return-object v0

    .line 3131
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Retrieving backup data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3133
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 3134
    .local v0, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 3135
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiBackupRestore;->retrieveBackupDataFromConfigurations(Ljava/util/List;)[B

    move-result-object v1

    .line 3136
    .local v1, "backupData":[B
    const-string v2, "WifiService"

    const-string v3, "Retrieved backup data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    return-object v1
.end method

.method public runFtmCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 3359
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3360
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->runFtmCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 2473
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 2475
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "setCountryCode uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2477
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCode(Ljava/lang/String;)Z

    .line 2478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    return-void
.end method

.method public setCountryCodeFromMcc(IZ)V
    .locals 3
    .param p1, "mcc"    # I
    .param p2, "persist"    # Z

    .line 3287
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code from mcc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3290
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "setCountryCodeFromMcc uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3292
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeFromMcc(I)Z

    .line 3293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3294
    return-void
.end method

.method public setFtmMode(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 3242
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3243
    const/4 v0, 0x0

    return v0

    .line 3245
    :cond_0
    if-eqz p2, :cond_1

    .line 3246
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26064

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 3249
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26065

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 3251
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setTetherState(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "enable"    # Z

    .line 3369
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTetherState type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3371
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26066

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    goto :goto_0

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26067

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 3374
    :goto_0
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1865
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1866
    return v1

    .line 1868
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1870
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1875
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "setWifiApConfiguration uid=%"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1876
    if-nez p1, :cond_1

    .line 1877
    return v1

    .line 1878
    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/WifiApConfigStore;->validateApWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1879
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->post(Ljava/lang/Runnable;)Z

    .line 1882
    const/4 v1, 0x1

    return v1

    .line 1884
    :cond_2
    const-string v2, "WifiService"

    const-string v3, "Invalid WifiConfiguration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return v1

    .line 1872
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not allowed to read or update stored WiFi AP config (uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized setWifiEnabled(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 969
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 970
    monitor-exit p0

    return v1

    .line 973
    :cond_0
    :try_start_1
    const-string v0, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "setWifiEnabled package=% uid=% enable=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 978
    nop

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 978
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->checkNetworkSettingsPermission(II)Z

    move-result v0

    .line 982
    .local v0, "isFromSettings":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 983
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "setWifiEnabled in Airplane mode: only Settings can enable wifi"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 984
    monitor-exit p0

    return v1

    .line 988
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    .line 990
    .local v2, "apEnabled":Z
    :goto_0
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 991
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "setWifiEnabled SoftAp not disabled: only Settings can enable wifi"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 992
    monitor-exit p0

    return v1

    .line 999
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1001
    .local v5, "ident":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_4

    .line 1003
    nop

    .line 1006
    :try_start_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1003
    monitor-exit p0

    return v4

    .line 1006
    :cond_4
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1007
    nop

    .line 1010
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_8

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v3

    .line 1012
    .local v3, "wiFiEnabledState":I
    if-eqz p2, :cond_6

    .line 1013
    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_8

    .line 1015
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->startConsentUi(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_8

    .line 1017
    monitor-exit p0

    return v4

    .line 1020
    :cond_6
    const/4 v7, 0x2

    if-eq v3, v7, :cond_7

    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    .line 1022
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->startConsentUi(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_8

    .line 1024
    monitor-exit p0

    return v4

    .line 1028
    .end local v3    # "wiFiEnabledState":I
    :cond_8
    if-eqz p2, :cond_9

    :try_start_8
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    .line 1031
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    if-nez v3, :cond_a

    .line 1032
    const-string v3, "WifiService"

    const-string v4, "WifiController is not yet started, abort setWifiEnabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1033
    monitor-exit p0

    return v1

    .line 1037
    :cond_a
    :try_start_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiController;->getUsbTetherEnabled()Z

    move-result v3

    .line 1038
    .local v3, "usbTetherEnabled":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tether_checkbox_not_show_again"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_b

    move v1, v4

    nop

    .line 1039
    .local v1, "skipShowDialog":Z
    :cond_b
    if-nez v1, :cond_d

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mProject:Ljava/lang/String;

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mProject:Ljava/lang/String;

    const-string v8, "18811"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz p2, :cond_d

    if-nez v3, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_d

    .line 1041
    new-instance v7, Lcom/android/server/wifi/WifiServiceImpl$6;

    invoke-direct {v7, p0, v3}, Lcom/android/server/wifi/WifiServiceImpl$6;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Z)V

    .line 1086
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$6;->start()V

    goto :goto_1

    .line 1089
    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v8, 0x26008

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1090
    :goto_1
    monitor-exit p0

    return v4

    .line 1006
    .end local v1    # "skipShowDialog":Z
    .end local v3    # "usbTetherEnabled":Z
    :catchall_0
    move-exception v1

    :try_start_a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 968
    .end local v0    # "isFromSettings":Z
    .end local v2    # "apEnabled":Z
    .end local v5    # "ident":J
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiServiceImpl;
    throw p1
.end method

.method public setWifiHandlerLogForTest(Lcom/android/server/wifi/WifiLog;)V
    .locals 1
    .param p1, "log"    # Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->setWifiLog(Lcom/android/server/wifi/WifiLog;)V

    .line 616
    return-void
.end method

.method public startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1672
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1674
    .local v1, "pid":I
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 1675
    return v3

    .line 1677
    :cond_0
    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 1679
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 1684
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_tethering"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1685
    const/4 v2, 0x4

    return v2

    .line 1690
    :cond_1
    const/4 v2, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->isAppForeground(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_2

    .line 1691
    return v2

    .line 1696
    :cond_2
    nop

    .line 1698
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "startLocalOnlyHotspot uid=% pid=%"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1700
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 1702
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1704
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Cannot start localOnlyHotspot when WiFi Tethering is active."

    invoke-interface {v3, v5}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1705
    monitor-exit v4

    return v2

    .line 1709
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1710
    .local v2, "request":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    if-nez v2, :cond_6

    .line 1717
    new-instance v5, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    new-instance v6, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-direct {v5, p2, p1, v6}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;-><init>(Landroid/os/IBinder;Landroid/os/Messenger;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;)V

    move-object v2, v5

    .line 1721
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    .line 1724
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v6, "LOHS already up, trigger onStarted callback"

    invoke-interface {v5, v6}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1725
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotStartedMessage(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1728
    goto :goto_0

    .line 1726
    :catch_0
    move-exception v5

    .line 1727
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v4

    return v3

    .line 1729
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1731
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 1732
    invoke-static {v5}, Lcom/android/server/wifi/WifiApConfigStore;->generateLocalOnlyHotspotConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1733
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v5, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startSoftApInternal(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1736
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 1711
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "caller already has an active request"

    invoke-interface {v3, v5}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1712
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Caller already has an active LocalOnlyHotspot request"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1738
    .end local v2    # "request":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1693
    :catch_1
    move-exception v3

    .line 1694
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "RemoteException during isAppForeground when calling startLOHS"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1695
    return v2

    .line 1680
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Location mode is not enabled."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 770
    return v1

    .line 773
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 774
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 775
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "startScan uid=%"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 776
    monitor-enter p0

    .line 777
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 785
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendFailedScanBroadcast()V

    .line 786
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    .line 787
    monitor-exit p0

    return v1

    .line 789
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V

    .line 792
    new-instance v4, Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    invoke-direct {v4}, Lcom/android/server/wifi/util/GeneralUtil$Mutable;-><init>()V

    .line 793
    .local v4, "scanSuccess":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachineHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;

    invoke-direct {v7, p0, v4, v0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;ILjava/lang/String;)V

    const-wide/16 v8, 0xfa0

    .line 794
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 797
    .local v6, "runWithScissorsSuccess":Z
    if-nez v6, :cond_2

    .line 798
    const-string v5, "WifiService"

    const-string v7, "Failed to post runnable to start scan"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendFailedScanBroadcast()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    nop

    .line 809
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 800
    return v1

    .line 802
    :cond_2
    :try_start_2
    iget-object v7, v4, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 803
    const-string v5, "WifiService"

    const-string v7, "Failed to start scan"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 804
    nop

    .line 809
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 804
    return v1

    .line 809
    .end local v4    # "scanSuccess":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Ljava/lang/Boolean;>;"
    .end local v6    # "runWithScissorsSuccess":Z
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    nop

    .line 811
    return v5

    .line 809
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 806
    :catch_0
    move-exception v4

    .line 807
    .local v4, "e":Ljava/lang/SecurityException;
    nop

    .line 809
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return v1

    .line 789
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 1226
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkStackPermission()V

    .line 1228
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "startSoftAp uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1231
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "SoftAp disabling, disallow startSoftAp"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    .line 1236
    const/4 v0, 0x0

    return v0

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1243
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1244
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z

    .line 1246
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startSoftApInternal(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1232
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "SoftAp current state:%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1233
    return v1
.end method

.method public startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    .locals 4
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 3215
    if-eqz p1, :cond_3

    .line 3218
    if-eqz p2, :cond_2

    .line 3221
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3222
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3227
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "startSubscriptionProvisioning uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3228
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncStartSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3230
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Subscription provisioning started with %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 3231
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/OsuProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3233
    :cond_0
    return-void

    .line 3224
    .end local v0    # "uid":I
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3219
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3216
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1811
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1813
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LocalOnlyHotspot is still in development"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopLocalOnlyHotspot()V
    .locals 5

    .line 1753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1754
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1756
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "stopLocalOnlyHotspot uid=% pid=%"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1758
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1760
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1761
    .local v3, "requestInfo":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    if-nez v3, :cond_0

    .line 1762
    monitor-exit v2

    return-void

    .line 1764
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->unlinkDeathRecipient()V

    .line 1765
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->unregisterCallingAppAndStopLocalOnlyHotspot(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    .line 1766
    .end local v3    # "requestInfo":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    monitor-exit v2

    .line 1767
    return-void

    .line 1766
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopSoftAp()Z
    .locals 3

    .line 1283
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkStackPermission()V

    .line 1288
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "stopSoftAp uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1291
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "SoftAp enabling, disallow stopSoftAp"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    .line 1296
    const/4 v0, 0x0

    return v0

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1304
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Call to stop Tethering while LOHS is active, Registered LOHS callers will be updated when softap stopped."

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 1305
    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1308
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1292
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "SoftAp current state:%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1293
    const/4 v0, 0x1

    return v0
.end method

.method public stopWatchLocalOnlyHotspot()V
    .locals 2

    .line 1822
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1823
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LocalOnlyHotspot is still in development"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterSoftApCallback(I)V
    .locals 3
    .param p1, "callbackIdentifier"    # I

    .line 1505
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1506
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "unregisterSoftApCallback uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;-><init>(Lcom/android/server/wifi/WifiServiceImpl;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1514
    return-void
.end method

.method public updateInterfaceIpState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1148
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkStackPermission()V

    .line 1149
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "updateInterfaceIpState uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1152
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .line 2911
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "updateWifiLockWorkSource uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2912
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiLockManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2913
    return-void
.end method
