.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$Injector;,
        Lcom/android/server/NetworkManagementService$LocalService;,
        Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;,
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;,
        Lcom/android/server/NetworkManagementService$SystemServices;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field static final SOFT_AP_COMMAND:Ljava/lang/String; = "softap"

.field static final SOFT_AP_COMMAND_SUCCESS:Ljava/lang/String; = "Ok"

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"

.field private static final VDBG_STALL:Z


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private volatile mDataSaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private final mFgHandler:Landroid/os/Handler;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private volatile mFirewallEnabled:Z

.field private final mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private final mLimitHandler:Landroid/os/Handler;

.field private mMobileActivityFromRadio:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuotaLock:Ljava/lang/Object;

.field private final mRulesLock:Ljava/lang/Object;

.field private final mServices:Lcom/android/server/NetworkManagementService$SystemServices;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mTetheringStatsProviders:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTetheringStatsProviders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/ITetheringStatsProvider;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;

.field private mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 162
    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    .line 168
    const-string/jumbo v0, "persist.radio.dbg.opdatastall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->VDBG_STALL:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 385
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 255
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 257
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 260
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 262
    nop

    .line 264
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 274
    nop

    .line 275
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 277
    nop

    .line 278
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 280
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 283
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 286
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 289
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 295
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 301
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 307
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 310
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 329
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 336
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 337
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 339
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 387
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 388
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 389
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    .line 391
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mLimitHandler:Landroid/os/Handler;

    .line 393
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 394
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 395
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/NetworkManagementService$SystemServices;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "services"    # Lcom/android/server/NetworkManagementService$SystemServices;

    .line 349
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 255
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 257
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 260
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 262
    nop

    .line 264
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 274
    nop

    .line 275
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 277
    nop

    .line 278
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 280
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 283
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 286
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 289
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 295
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 301
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 307
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 310
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 329
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 336
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 337
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 339
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 350
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 351
    iput-object p3, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 354
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v1, Lcom/android/server/NativeDaemonConnector;

    new-instance v3, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    const/4 v10, 0x0

    invoke-direct {v3, p0, v10}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string v6, "NetdConnector"

    .line 365
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    const/16 v5, 0xa

    const/16 v7, 0xa0

    move-object v2, v1

    move-object v4, p2

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 366
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "NetdConnector"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 368
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 371
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mLimitHandler:Landroid/os/Handler;

    .line 375
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    new-instance v2, Lcom/android/server/NetworkManagementService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkManagementService$SystemServices;->registerLocalService(Lcom/android/server/NetworkManagementInternal;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    invoke-direct {v3, p0, v10}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string/jumbo v4, "netd"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;IIJIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Z

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/RouteInfo;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/NetworkManagementService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/NetworkManagementService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/NetworkManagementService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .line 142
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 142
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private applyUidCleartextNetworkPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 1896
    packed-switch p2, :pswitch_data_0

    .line 1907
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1904
    :pswitch_0
    const-string/jumbo v0, "reject"

    .line 1905
    .local v0, "policyString":Ljava/lang/String;
    goto :goto_0

    .line 1901
    .end local v0    # "policyString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "log"

    .line 1902
    .restart local v0    # "policyString":Ljava/lang/String;
    goto :goto_0

    .line 1898
    .end local v0    # "policyString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "accept"

    .line 1899
    .restart local v0    # "policyString":Ljava/lang/String;
    nop

    .line 1907
    :goto_0
    nop

    .line 1911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "strict"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "set_uid_cleartext_policy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1912
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    nop

    .line 1916
    return-void

    .line 1913
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "chainName"    # Ljava/lang/String;

    .line 2186
    const/4 v0, 0x0

    .line 2188
    .local v0, "numUids":I
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 2190
    const/4 v1, 0x1

    new-array v3, v1, [Landroid/net/UidRange;

    new-instance v4, Landroid/net/UidRange;

    const/16 v5, 0x2710

    const v6, 0x7fffffff

    invoke-direct {v4, v5, v6}, Landroid/net/UidRange;-><init>(II)V

    aput-object v4, v3, v2

    .line 2196
    .local v3, "ranges":[Landroid/net/UidRange;
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2197
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 2198
    .local v5, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 2199
    .local v6, "exemptUids":[I
    nop

    .local v2, "i":I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_1

    .line 2200
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v1, :cond_0

    .line 2201
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v6, v0

    .line 2202
    add-int/lit8 v0, v0, 0x1

    .line 2199
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2205
    .end local v2    # "i":I
    .end local v5    # "rules":Landroid/util/SparseIntArray;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v6

    .line 2213
    .end local v6    # "exemptUids":[I
    .local v1, "exemptUids":[I
    array-length v2, v1

    if-eq v0, v2, :cond_6

    .line 2214
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_2

    .line 2205
    .end local v1    # "exemptUids":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2218
    .end local v3    # "ranges":[Landroid/net/UidRange;
    :cond_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2219
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v3

    .line 2220
    .local v3, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRange;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2221
    .local v4, "ranges":[Landroid/net/UidRange;
    move v5, v0

    move v0, v2

    .local v0, "i":I
    .local v5, "numUids":I
    :goto_1
    :try_start_3
    array-length v6, v4

    if-ge v0, v6, :cond_4

    .line 2222
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 2223
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2224
    .local v6, "uid":I
    new-instance v7, Landroid/net/UidRange;

    invoke-direct {v7, v6, v6}, Landroid/net/UidRange;-><init>(II)V

    aput-object v7, v4, v5

    .line 2225
    add-int/lit8 v5, v5, 0x1

    .line 2221
    .end local v6    # "uid":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2228
    .end local v0    # "i":I
    .end local v3    # "rules":Landroid/util/SparseIntArray;
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v4

    .line 2230
    .end local v4    # "ranges":[Landroid/net/UidRange;
    .local v0, "ranges":[Landroid/net/UidRange;
    array-length v1, v0

    if-eq v5, v1, :cond_5

    .line 2231
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/UidRange;

    .line 2234
    .end local v0    # "ranges":[Landroid/net/UidRange;
    .local v3, "ranges":[Landroid/net/UidRange;
    :cond_5
    move-object v3, v0

    new-array v1, v2, [I

    move v0, v5

    .line 2238
    .end local v5    # "numUids":I
    .local v0, "numUids":I
    .restart local v1    # "exemptUids":[I
    :cond_6
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, v3, v1}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2241
    goto :goto_3

    .line 2239
    :catch_0
    move-exception v2

    .line 2240
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing sockets after enabling chain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 2228
    .end local v1    # "exemptUids":[I
    .end local v3    # "ranges":[Landroid/net/UidRange;
    :catchall_1
    move-exception v2

    move v5, v0

    move-object v0, v2

    .end local v0    # "numUids":I
    .restart local v5    # "numUids":I
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method private connectNativeNetdService()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService$SystemServices;->getNetd()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 657
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 414
    const-string/jumbo v0, "netd"

    new-instance v1, Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-direct {v1}, Lcom/android/server/NetworkManagementService$SystemServices;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .param p2, "services"    # Lcom/android/server/NetworkManagementService$SystemServices;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 399
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/NetworkManagementService$SystemServices;)V

    .line 401
    .local v0, "service":Lcom/android/server/NetworkManagementService;
    iget-object v1, v0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 402
    .local v1, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NetworkManagement"

    const-string v3, "Creating NetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v2, v0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 404
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkManagement"

    const-string v3, "Awaiting socket connection"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 406
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NetworkManagement"

    const-string v3, "Connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "NetworkManagement"

    const-string v3, "Connecting native netd service"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_3
    invoke-direct {v0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    .line 409
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NetworkManagement"

    const-string v3, "Connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_4
    return-object v0
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .line 2607
    const-string v0, "UID firewall "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    const-string v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2611
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2612
    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2613
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2615
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2611
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2617
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/util/SparseBooleanArray;

    .line 2595
    const-string v0, "UID bandwith control "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2597
    const-string v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2599
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2600
    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2601
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2599
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2603
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    return-void
.end method

.method private static enforceSystemUid()V
    .locals 3

    .line 2448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2449
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2452
    return-void

    .line 2450
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 1452
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1453
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1454
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1455
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_0
    goto :goto_0

    .line 1457
    :cond_1
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    const-string v1, "batterystats"

    .line 435
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 436
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFirewallChainState(I)Z
    .locals 2
    .param p1, "chain"    # I

    .line 2883
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2884
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2885
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .locals 1
    .param p1, "chain"    # I
    .param p2, "rule"    # I

    .line 2401
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2402
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2403
    const-string v0, "allow"

    .local v0, "ruleName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2405
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_0
    const-string v0, "deny"

    goto :goto_0

    .line 2408
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 2409
    const-string v0, "deny"

    goto :goto_0

    .line 2411
    :cond_2
    const-string v0, "allow"

    .line 2414
    .restart local v0    # "ruleName":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method private getFirewallType(I)I
    .locals 2
    .param p1, "chain"    # I

    .line 2291
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result v1

    goto :goto_0

    .line 2297
    :pswitch_0
    return v1

    .line 2293
    :pswitch_1
    return v0

    .line 2295
    :pswitch_2
    return v1

    .line 2299
    :goto_0
    xor-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .locals 3
    .param p1, "chain"    # I

    .line 2418
    packed-switch p1, :pswitch_data_0

    .line 2428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2424
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2420
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2422
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2426
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V
    .locals 5
    .param p1, "eventCallback"    # Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;

    .line 459
    const/4 v0, 0x0

    move v1, v0

    .line 461
    .local v1, "length":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 465
    nop

    .line 472
    nop

    .line 472
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 474
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    goto :goto_1

    .line 479
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 475
    .restart local v0    # "i":I
    :catch_0
    move-exception v2

    .line 472
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 480
    nop

    .line 481
    return-void

    .line 462
    :catch_1
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem beginBroadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method private isNetworkRestrictedInternal(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 2847
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2848
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2849
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2850
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of app standby mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_0
    monitor-exit v0

    return v3

    .line 2853
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2854
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2855
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of device idle mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_2
    monitor-exit v0

    return v3

    .line 2858
    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2859
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 2860
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of power saver mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_4
    monitor-exit v0

    return v3

    .line 2863
    :cond_5
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2864
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of no metered data in the background"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_6
    monitor-exit v0

    return v3

    .line 2868
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2869
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of data saver mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :cond_8
    monitor-exit v0

    return v3

    .line 2872
    :cond_9
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2873
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$notifyAddressRemoved$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyAddressUpdated$6(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceClassActivity$5(IZJLandroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "active"    # Z
    .param p2, "tsNanos"    # J
    .param p4, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    nop

    .line 570
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-interface {p4, v0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceDnsServerInfo$8(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "lifetime"    # J
    .param p3, "addresses"    # [Ljava/lang/String;
    .param p4, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceLinkStateChanged$1(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "up"    # Z
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceRemoved$3(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "up"    # Z
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyLimitReached$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "limitName"    # Ljava/lang/String;
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "route"    # Landroid/net/RouteInfo;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$9(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "route"    # Landroid/net/RouteInfo;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "add"    # Z
    .param p2, "fromIface"    # Ljava/lang/String;
    .param p3, "toIface"    # Ljava/lang/String;

    .line 1461
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "ipfwd"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "add"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "remove"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1463
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    nop

    .line 1467
    return-void

    .line 1464
    :catch_0
    move-exception v1

    .line 1465
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .line 2673
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "interface"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    nop

    .line 2679
    return-void

    .line 2676
    :catch_0
    move-exception v0

    .line 2677
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1483
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "nat"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 1487
    .local v1, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v1, :cond_0

    .line 1488
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_1

    .line 1492
    :cond_0
    nop

    .line 1493
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    .line 1492
    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1494
    .local v2, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1495
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1496
    .local v4, "ia":Ljava/net/InterfaceAddress;
    nop

    .line 1497
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v6

    .line 1496
    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    .line 1498
    .local v5, "addr":Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1499
    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 1503
    .end local v2    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :cond_1
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    nop

    .line 1507
    return-void

    .line 1504
    :catch_0
    move-exception v2

    .line 1505
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;

    .line 1217
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "route"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x2

    aput-object p2, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1223
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1225
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1235
    :cond_0
    const-string/jumbo v1, "throw"

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 1232
    :cond_1
    const-string/jumbo v1, "unreachable"

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1233
    goto :goto_0

    .line 1227
    :cond_2
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1228
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1240
    :cond_3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    nop

    .line 1244
    return-void

    .line 1241
    :catch_0
    move-exception v1

    .line 1242
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 817
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 818
    return-void
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 810
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$V2aaK7-IK-mKPVvhONFoyFWi4zM;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$V2aaK7-IK-mKPVvhONFoyFWi4zM;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 811
    return-void
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 502
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 503
    return-void
.end method

.method private notifyInterfaceClassActivity(IIJIZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .param p6, "fromRadio"    # Z

    .line 529
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 530
    .local v0, "isMobile":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 531
    if-nez p6, :cond_0

    .line 532
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v2, :cond_1

    .line 536
    iget p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    goto :goto_0

    .line 539
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 541
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v2, p2, :cond_2

    .line 542
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 544
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_1

    .line 545
    :catch_0
    move-exception v2

    .line 550
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 551
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    if-eq v2, p2, :cond_3

    .line 552
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 554
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    goto :goto_2

    .line 555
    :catch_1
    move-exception v2

    .line 560
    :cond_3
    :goto_2
    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    nop

    .line 563
    .local v1, "isActive":Z
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    if-nez p6, :cond_6

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-nez v2, :cond_7

    .line 568
    :cond_6
    move v2, v1

    .line 569
    .local v2, "active":Z
    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;

    invoke-direct {v3, p1, v2, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;-><init>(IZJ)V

    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 573
    .end local v2    # "active":Z
    :cond_7
    const/4 v2, 0x0

    .line 574
    .local v2, "report":Z
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 575
    :try_start_2
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 578
    const/4 v1, 0x1

    .line 580
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq v4, v1, :cond_9

    .line 581
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 582
    move v2, v1

    .line 584
    :cond_9
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    if-eqz v2, :cond_a

    .line 586
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 588
    :cond_a
    return-void

    .line 584
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .line 824
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$8J1LB_n8vMkXxx2KS06P_lQCw6w;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$8J1LB_n8vMkXxx2KS06P_lQCw6w;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 825
    return-void
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 495
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 496
    return-void
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 515
    return-void
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 487
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 488
    return-void
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .line 521
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 522
    return-void
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .line 831
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$glaDh2pKbTpJLW8cwpYGiYd-sCA;

    invoke-direct {v0, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$glaDh2pKbTpJLW8cwpYGiYd-sCA;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    goto :goto_0

    .line 834
    :cond_0
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;

    invoke-direct {v0, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 836
    :goto_0
    return-void
.end method

.method private prepareNativeDaemon()V
    .locals 11

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    .line 668
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 671
    .local v1, "hasKernelSupport":Z
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 673
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 674
    :try_start_0
    const-string v4, "NetworkManagement"

    const-string v5, "enabling bandwidth control"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "bandwidth"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "enable"

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 677
    iput-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v4

    .line 679
    .local v4, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_2
    const-string v5, "NetworkManagement"

    const-string/jumbo v6, "problem enabling bandwidth controls"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    .end local v4    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_0
    goto :goto_1

    .line 795
    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 682
    :cond_0
    const-string v4, "NetworkManagement"

    const-string/jumbo v5, "not enabling bandwidth control"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_1
    const-string/jumbo v4, "net.qtaguid_enabled"

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v5, :cond_1

    const-string v5, "1"

    goto :goto_2

    :cond_1
    const-string v5, "0"

    :goto_2
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 688
    :try_start_3
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "strict"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "enable"

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 689
    iput-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 692
    goto :goto_3

    .line 690
    :catch_1
    move-exception v4

    .line 691
    .restart local v4    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_4
    const-string v5, "NetworkManagement"

    const-string v6, "Failed strict enable"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    .end local v4    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_3
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v4}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 696
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 697
    .local v4, "size":I
    if-lez v4, :cond_3

    .line 698
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active quota rules"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 700
    .local v5, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 701
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 702
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 703
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_4

    .line 706
    .end local v5    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_3
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    move v4, v5

    .line 707
    if-lez v4, :cond_5

    .line 708
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active alert rules"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_4
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 710
    .local v5, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 711
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 712
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 713
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_5

    .line 716
    .end local v5    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    const/4 v5, 0x0

    .line 717
    .local v5, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    const/4 v6, 0x0

    .line 718
    .local v6, "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 719
    :try_start_5
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    move v4, v8

    .line 720
    if-lez v4, :cond_7

    .line 721
    sget-boolean v8, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v8, :cond_6

    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " UIDs to metered blacklist rules"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_6
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    move-object v5, v8

    .line 723
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 726
    :cond_7
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    move v4, v8

    .line 727
    if-lez v4, :cond_9

    .line 728
    sget-boolean v8, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v8, :cond_8

    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " UIDs to metered whitelist rules"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_8
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    move-object v6, v8

    .line 730
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 732
    :cond_9
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 733
    if-eqz v5, :cond_a

    .line 734
    move v7, v0

    .line 734
    .local v7, "i":I
    :goto_6
    :try_start_6
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 735
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 736
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    .line 735
    invoke-virtual {p0, v8, v9}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 734
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 739
    .end local v7    # "i":I
    :cond_a
    if-eqz v6, :cond_b

    .line 740
    move v7, v0

    .line 740
    .restart local v7    # "i":I
    :goto_7
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 741
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 742
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    .line 741
    invoke-virtual {p0, v8, v9}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 740
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 746
    .end local v7    # "i":I
    :cond_b
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v4, v7

    .line 747
    if-lez v4, :cond_d

    .line 748
    sget-boolean v7, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v7, :cond_c

    const-string v7, "NetworkManagement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pushing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " active UID cleartext policies"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_c
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 750
    .local v7, "local":Landroid/util/SparseIntArray;
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 751
    move v8, v0

    .line 751
    .local v8, "i":I
    :goto_8
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 752
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 751
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 758
    .end local v7    # "local":Landroid/util/SparseIntArray;
    .end local v8    # "i":I
    :cond_d
    :try_start_7
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v7}, Landroid/net/INetd;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 759
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v7}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 761
    const-string v7, ""

    invoke-direct {p0, v0, v7}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 762
    const/4 v7, 0x2

    const-string/jumbo v8, "standby "

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 763
    const-string v7, "dozable "

    invoke-direct {p0, v3, v7}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 764
    const-string/jumbo v7, "powersave "

    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 766
    new-array v7, v8, [I

    fill-array-data v7, :array_0

    .line 768
    .local v7, "chains":[I
    array-length v8, v7

    :goto_9
    if-ge v0, v8, :cond_f

    aget v9, v7, v0

    .line 769
    .local v9, "chain":I
    invoke-direct {p0, v9}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 770
    invoke-virtual {p0, v9, v3}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 768
    .end local v9    # "chain":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 776
    .end local v7    # "chains":[I
    :cond_f
    goto :goto_a

    .line 774
    :catch_2
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v3, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error set/sync firewall :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "size":I
    .end local v5    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .end local v6    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :goto_a
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 797
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v0, :cond_10

    .line 799
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 801
    goto :goto_b

    .line 800
    :catch_3
    move-exception v0

    .line 804
    :cond_10
    :goto_b
    return-void

    .line 732
    .restart local v4    # "size":I
    .restart local v5    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .restart local v6    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    .line 795
    .end local v4    # "size":I
    .end local v5    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .end local v6    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :goto_c
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "fstream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1252
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1253
    .local v2, "in":Ljava/io/DataInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1258
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1259
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1264
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    nop

    .line 1266
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1267
    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_3

    .line 1264
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 1266
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1267
    goto :goto_2

    :catch_1
    move-exception v3

    :cond_1
    :goto_2
    throw v2

    .line 1261
    :catch_2
    move-exception v2

    .line 1264
    if-eqz v0, :cond_2

    goto :goto_1

    .line 1271
    :cond_2
    :goto_3
    return-object v1
.end method

.method private reportNetworkActive()V
    .locals 3

    .line 2509
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2511
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2513
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkActivityListener;

    invoke-interface {v2}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2515
    goto :goto_1

    .line 2518
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    .line 2514
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 2511
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2518
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2519
    nop

    .line 2520
    return-void
.end method

.method private setFirewallChainState(IZ)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "state"    # Z

    .line 2877
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2878
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2879
    monitor-exit v0

    .line 2880
    return-void

    .line 2879
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setFirewallUidRuleLocked(III)V
    .locals 5
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 2361
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "firewall"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "set_uid_rule"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 2364
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2363
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2367
    goto :goto_0

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 2369
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_0
    :goto_0
    return-void
.end method

.method private setUidOnMeteredNetworkList(IZZ)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "blacklist"    # Z
    .param p3, "enable"    # Z

    .line 1799
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1805
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "naughtyapps"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "niceapps"

    .line 1806
    .local v0, "chain":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    const-string v1, "add"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "remove"

    .line 1808
    .local v1, "suffix":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1811
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1812
    if-eqz p2, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_2

    .line 1814
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 1812
    :cond_3
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 1813
    .local v4, "quotaList":Landroid/util/SparseBooleanArray;
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    .line 1814
    .local v6, "oldEnable":Z
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1815
    if-ne v6, p3, :cond_4

    .line 1817
    :try_start_2
    monitor-exit v2

    return-void

    .line 1820
    :cond_4
    const-string/jumbo v3, "inetd bandwidth"

    const-wide/32 v7, 0x200000

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1822
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "bandwidth"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-virtual {v3, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1823
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1824
    if-eqz p3, :cond_5

    .line 1825
    :try_start_4
    invoke-virtual {v4, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 1829
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 1827
    :cond_5
    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1829
    :goto_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1833
    :try_start_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1834
    nop

    .line 1835
    .end local v4    # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v6    # "oldEnable":Z
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1836
    return-void

    .line 1829
    .restart local v4    # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v6    # "oldEnable":Z
    :goto_4
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5
    :try_end_7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1833
    :catchall_2
    move-exception v3

    goto :goto_5

    .line 1830
    :catch_0
    move-exception v3

    .line 1831
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1833
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_5
    :try_start_9
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1814
    .end local v4    # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v6    # "oldEnable":Z
    :goto_6
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v4

    .line 1835
    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v3
.end method

.method private syncFirewallChainLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 640
    .local v1, "uidFirewallRules":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 641
    .local v2, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 642
    .end local v1    # "uidFirewallRules":Landroid/util/SparseIntArray;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 647
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pushing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active firewall "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UID rules"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 650
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 642
    .end local v2    # "rules":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 2373
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2374
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 2376
    .local v1, "uidFirewallRules":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2377
    .local v3, "oldUidFirewallRule":I
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_0

    .line 2378
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oldRule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on chain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_0
    if-ne v3, p3, :cond_2

    .line 2382
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkManagement"

    const-string v5, "!!!!! Skipping change"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_1
    monitor-exit v0

    return v2

    .line 2387
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v2

    .line 2388
    .local v2, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    .line 2390
    .local v4, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 2391
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 2393
    :cond_3
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2395
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    monitor-exit v0

    return v5

    .line 2396
    .end local v1    # "uidFirewallRules":Landroid/util/SparseIntArray;
    .end local v2    # "ruleName":Ljava/lang/String;
    .end local v3    # "oldUidFirewallRule":I
    .end local v4    # "oldRuleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public OPgetDnsInfo()[I
    .locals 13

    .line 2049
    const-string/jumbo v0, "sys.radio.cellular.netId"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2050
    .local v0, "cellularNetId":I
    const-string/jumbo v2, "sys.radio.cellular.serverslength"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2051
    .local v8, "cellularServerslength":I
    const-string/jumbo v2, "sys.radio.cellular.domainslength"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2053
    .local v1, "cellularDomainslength":I
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_DATA_STALL: OPgetDnsInfo() cellularNetId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellularServerslength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellularDomainslength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    new-array v9, v8, [Ljava/lang/String;

    .line 2056
    .local v9, "resultServers":[Ljava/lang/String;
    new-array v10, v1, [Ljava/lang/String;

    .line 2058
    .local v10, "resultDomains":[Ljava/lang/String;
    const/4 v2, 0x4

    new-array v11, v2, [I

    .line 2073
    .local v11, "resultParams":[I
    mul-int/lit8 v2, v8, 0x7

    new-array v12, v2, [I

    .line 2075
    .local v12, "resultStats":[I
    if-eqz v0, :cond_7

    if-eqz v8, :cond_7

    .line 2078
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    move v3, v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-interface/range {v2 .. v7}, Landroid/net/INetd;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    goto :goto_0

    .line 2079
    :catch_0
    move-exception v2

    .line 2080
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_DATA_STALL: OPgetDnsInfo() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/4 v12, 0x0

    .line 2084
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    .line 2085
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_1
    array-length v3, v9

    if-ge v2, v3, :cond_0

    .line 2086
    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_DATA_STALL: OPgetDnsInfo() resultServers["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v9, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2088
    :cond_0
    const/4 v2, 0x0

    :goto_2
    array-length v3, v10

    if-ge v2, v3, :cond_2

    .line 2089
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->VDBG_STALL:Z

    if-eqz v3, :cond_1

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_DATA_STALL: OPgetDnsInfo() resultDomains["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2091
    :cond_2
    const/4 v2, 0x0

    :goto_3
    array-length v3, v11

    if-ge v2, v3, :cond_4

    .line 2092
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->VDBG_STALL:Z

    if-eqz v3, :cond_3

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_DATA_STALL: OPgetDnsInfo() resultParams["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v11, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2094
    :cond_4
    const/4 v2, 0x0

    :goto_4
    array-length v3, v12

    if-ge v2, v3, :cond_6

    .line 2095
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->VDBG_STALL:Z

    if-eqz v3, :cond_5

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_DATA_STALL: OPgetDnsInfo() resultStats["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v12, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2097
    .end local v2    # "i":I
    :cond_6
    goto :goto_5

    .line 2100
    :cond_7
    const/4 v12, 0x0

    .line 2103
    :goto_5
    return-object v12
.end method

.method public addIdleTimer(Ljava/lang/String;II)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    .line 1567
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    const-string v1, "Adding idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1572
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1573
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1575
    iget v3, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1580
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "add"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 1581
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1580
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    nop

    .line 1585
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v3, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1589
    iput-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1591
    :cond_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/NetworkManagementService$2;

    invoke-direct {v3, p0, p3}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1598
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    monitor-exit v0

    .line 1599
    return-void

    .line 1582
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_0
    move-exception v2

    .line 1583
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1598
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 2811
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string v0, "add"

    const-string/jumbo v1, "local"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 2814
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2815
    const-string v2, "add"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 2817
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 2818
    :cond_1
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .line 2664
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .line 2683
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "network"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "route"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "legacy"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "add"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2688
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1

    .line 2689
    .local v1, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2691
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2692
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2696
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2699
    nop

    .line 2700
    return-void

    .line 2697
    :catch_0
    move-exception v2

    .line 2698
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .line 1208
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1209
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .line 2109
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 2111
    .local v0, "argv":[Ljava/lang/Object;
    const-string/jumbo v1, "users"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2112
    const-string v1, "add"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 2114
    const/4 v1, 0x3

    .line 2116
    .local v1, "argc":I
    nop

    .line 2116
    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 2117
    add-int/lit8 v4, v1, 0x1

    .line 2117
    .local v4, "argc":I
    aget-object v5, p2, v2

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2118
    .end local v1    # "argc":I
    array-length v1, p2

    sub-int/2addr v1, v3

    if-eq v2, v1, :cond_1

    array-length v1, v0

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2116
    :cond_0
    move v1, v4

    goto :goto_2

    .line 2120
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    nop

    .line 2124
    const/4 v1, 0x3

    .line 2116
    .end local v4    # "argc":I
    .restart local v1    # "argc":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2121
    .end local v1    # "argc":I
    .restart local v4    # "argc":I
    :catch_0
    move-exception v1

    .line 2122
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 2127
    .end local v2    # "i":I
    .end local v4    # "argc":I
    .local v1, "argc":I
    :cond_2
    return-void
.end method

.method public allowProtect(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 2789
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "protect"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "allow"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2795
    nop

    .line 2796
    return-void

    .line 2793
    :catch_0
    move-exception v0

    .line 2794
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    .line 1543
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "pppd"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "attach"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    .line 1546
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1547
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 1548
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 1549
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1545
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    nop

    .line 1553
    return-void

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearDefaultNetId()V
    .locals 5

    .line 2715
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "default"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "clear"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2721
    nop

    .line 2722
    return-void

    .line 2719
    :catch_0
    move-exception v0

    .line 2720
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "clearaddrs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    nop

    .line 1175
    return-void

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearPermission([I)V
    .locals 7
    .param p1, "uids"    # [I

    .line 2766
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 2769
    .local v0, "argv":[Ljava/lang/Object;
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2770
    const-string/jumbo v1, "user"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2771
    const-string v1, "clear"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 2772
    const/4 v1, 0x3

    .line 2774
    .local v1, "argc":I
    nop

    .line 2774
    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 2775
    add-int/lit8 v4, v1, 0x1

    .line 2775
    .local v4, "argc":I
    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2776
    .end local v1    # "argc":I
    array-length v1, p1

    sub-int/2addr v1, v3

    if-eq v2, v1, :cond_1

    array-length v1, v0

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2774
    :cond_0
    move v1, v4

    goto :goto_2

    .line 2778
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    nop

    .line 2782
    const/4 v1, 0x3

    .line 2774
    .end local v4    # "argc":I
    .restart local v1    # "argc":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2779
    .end local v1    # "argc":I
    .restart local v4    # "argc":I
    :catch_0
    move-exception v1

    .line 2780
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 2785
    .end local v2    # "i":I
    .end local v4    # "argc":I
    .local v1, "argc":I
    :cond_2
    return-void
.end method

.method public createPhysicalNetwork(ILjava/lang/String;)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 2622
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2626
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "network"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "create"

    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    aput-object p2, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto :goto_0

    .line 2630
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2628
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "network"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "create"

    aput-object v5, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    :goto_0
    nop

    .line 2633
    return-void

    .line 2630
    :goto_1
    nop

    .line 2631
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualNetwork(IZZ)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "hasDNS"    # Z
    .param p3, "secure"    # Z

    .line 2637
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "create"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "vpn"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    if-eqz p2, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 2641
    if-eqz p3, :cond_1

    const-string v4, "1"

    goto :goto_1

    :cond_1
    const-string v4, "0"

    :goto_1
    aput-object v4, v2, v3

    .line 2640
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    nop

    .line 2645
    return-void

    .line 2642
    :catch_0
    move-exception v0

    .line 2643
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public denyProtect(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 2800
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "protect"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "deny"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    nop

    .line 2807
    return-void

    .line 2804
    :catch_0
    move-exception v0

    .line 2805
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .locals 5
    .param p1, "tty"    # Ljava/lang/String;

    .line 1557
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "pppd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "detach"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    nop

    .line 1563
    return-void

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "ipv6"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "disable"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    nop

    .line 1204
    return-void

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .line 1521
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :try_start_0
    const-string v0, "disable"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    nop

    .line 1527
    return-void

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2532
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2534
    :cond_0
    const-string v0, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2535
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2538
    const-string v0, "Bandwidth control enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2539
    const-string/jumbo v0, "mMobileActivityFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2540
    const-string v0, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2541
    const-string/jumbo v0, "mNetworkActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2543
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2544
    :try_start_0
    const-string v1, "Active quota ifaces: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2545
    const-string v1, "Active alert ifaces: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    const-string v1, "Data saver mode: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2547
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2548
    :try_start_1
    const-string v2, "blacklist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2549
    const-string/jumbo v2, "whitelist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2550
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2551
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2553
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2554
    :try_start_3
    const-string v0, ""

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2556
    const-string v0, "UID firewall standby chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2557
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2556
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2558
    const-string/jumbo v0, "standby"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2560
    const-string v0, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2561
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2560
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2562
    const-string v0, "dozable"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID firewall powersave chain enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 2565
    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2564
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const-string/jumbo v0, "powersave"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2567
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2569
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2570
    :try_start_4
    const-string v1, "Idle timers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2572
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2574
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string v4, "    timeout="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2575
    const-string v4, " type="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2576
    const-string v4, " networkCount="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2577
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v3    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    goto :goto_0

    .line 2578
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2580
    const-string v0, "Firewall enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2581
    const-string v0, "Netd service status: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2582
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_2

    .line 2583
    const-string v0, "disconnected"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2586
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 2587
    .local v0, "alive":Z
    if-eqz v0, :cond_3

    const-string v1, "alive"

    goto :goto_1

    :cond_3
    const-string v1, "dead"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2590
    .end local v0    # "alive":Z
    goto :goto_2

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "unreachable"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 2578
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 2567
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 2550
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 2551
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "ipv6"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "enable"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    nop

    .line 1185
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .line 1511
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :try_start_0
    const-string v0, "enable"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    nop

    .line 1517
    return-void

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .locals 5

    .line 1442
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dns"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "list"

    aput-object v4, v2, v3

    .line 1445
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x70

    .line 1444
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getFirewallChainName(I)Ljava/lang/String;
    .locals 3
    .param p1, "chain"    # I

    .line 2433
    packed-switch p1, :pswitch_data_0

    .line 2443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2439
    :pswitch_0
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 2435
    :pswitch_1
    const-string/jumbo v0, "standby"

    return-object v0

    .line 2437
    :pswitch_2
    const-string v0, "dozable"

    return-object v0

    .line 2441
    :pswitch_3
    const-string/jumbo v0, "none"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getInjector()Lcom/android/server/NetworkManagementService$Injector;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2940
    new-instance v0, Lcom/android/server/NetworkManagementService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$Injector;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-object v0
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .line 1074
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "getcfg"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1081
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    nop

    .line 1080
    nop

    .line 1083
    const/16 v1, 0xd5

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1086
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v1, "st":Ljava/util/StringTokenizer;
    :try_start_1
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1091
    .local v2, "cfg":Landroid/net/InterfaceConfiguration;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1092
    const/4 v3, 0x0

    .line 1093
    .local v3, "addr":Ljava/net/InetAddress;
    nop

    .line 1095
    .local v4, "prefixLength":I
    :try_start_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v5

    .line 1098
    goto :goto_0

    .line 1096
    :catch_0
    move-exception v5

    .line 1097
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v6, "NetworkManagement"

    const-string v7, "Failed to parse ipaddr"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1101
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    move v4, v5

    .line 1104
    goto :goto_1

    .line 1102
    :catch_1
    move-exception v5

    .line 1103
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v6, "NetworkManagement"

    const-string v7, "Failed to parse prefixLength"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :goto_1
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1107
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1112
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v4    # "prefixLength":I
    :cond_0
    nop

    .line 1111
    nop

    .line 1113
    return-object v2

    .line 1110
    .end local v2    # "cfg":Landroid/net/InterfaceConfiguration;
    :catch_2
    move-exception v2

    .line 1111
    .local v2, "nsee":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid response from daemon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1079
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "nsee":Ljava/util/NoSuchElementException;
    :catch_3
    move-exception v0

    .line 1080
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getIpForwardingEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "ipfwd"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    nop

    .line 1302
    nop

    .line 1306
    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1307
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1301
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getNetdService()Landroid/net/INetd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 1052
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_0

    .line 1054
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1058
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    return-object v1
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 3

    .line 1652
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, v2, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 3

    .line 1632
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 3

    .line 1642
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1645
    :catch_0
    move-exception v0

    .line 1646
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "how"    # I

    .line 2016
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2019
    .local v0, "stats":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 2020
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    :try_start_1
    invoke-interface {v3, p1}, Landroid/net/ITetheringStatsProvider;->getTetherStats(I)Landroid/net/NetworkStats;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2026
    goto :goto_1

    .line 2023
    :catch_0
    move-exception v4

    .line 2024
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem reading tethering stats from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 2025
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2024
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    .end local v3    # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2028
    :cond_0
    monitor-exit v1

    .line 2029
    return-object v0

    .line 2028
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "ifaces"    # [Ljava/lang/String;

    .line 1960
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBandwidthControlEnabled()Z
    .locals 3

    .line 1954
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 2478
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "clatd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    nop

    .line 2484
    nop

    .line 2487
    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2488
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "started"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2483
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public isFirewallEnabled()Z
    .locals 1

    .line 2164
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2165
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .locals 2

    .line 2503
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2504
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

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
    monitor-exit v0

    return v1

    .line 2505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNetworkRestricted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 2842
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringStarted()Z
    .locals 5

    .line 1350
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    nop

    .line 1356
    nop

    .line 1360
    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1361
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "started"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1355
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listInterfaces()[Ljava/lang/String;
    .locals 5

    .line 1063
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "list"

    aput-object v4, v2, v3

    .line 1066
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x6e

    .line 1065
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .locals 5

    .line 1412
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "interface"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "list"

    aput-object v4, v2, v3

    .line 1415
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x6f

    .line 1414
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .locals 3

    .line 1531
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "list_ttys"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1534
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x71

    .line 1533
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public monitor()V
    .locals 1

    .line 2525
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 2528
    :cond_0
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .line 2493
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2494
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .line 442
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 444
    return-void
.end method

.method public registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .param p2, "name"    # Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    monitor-exit v0

    .line 597
    return-void

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .line 1603
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    const-string v1, "Removing idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1609
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    goto :goto_0

    .line 1614
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "remove"

    aput-object v7, v5, v6

    aput-object p1, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    .line 1615
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget v6, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1614
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1618
    nop

    .line 1619
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/NetworkManagementService$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/NetworkManagementService$3;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1627
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    monitor-exit v0

    .line 1628
    return-void

    .line 1616
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_0
    move-exception v2

    .line 1617
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1610
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 1627
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 1761
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1768
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1770
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1775
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "removeinterfacealert"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1776
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1779
    nop

    .line 1780
    :try_start_2
    monitor-exit v0

    .line 1781
    return-void

    .line 1777
    :catch_0
    move-exception v1

    .line 1778
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1780
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 2822
    const-string/jumbo v0, "remove"

    const-string/jumbo v1, "local"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .line 2669
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .line 1696
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1703
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1705
    monitor-exit v0

    return-void

    .line 1708
    :cond_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1713
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "removeiquota"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1716
    nop

    .line 1718
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1719
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1721
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    const-wide/16 v4, -0x1

    :try_start_4
    invoke-interface {v3, p1, v4, v5}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1725
    goto :goto_1

    .line 1722
    :catch_0
    move-exception v4

    .line 1723
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem removing tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1724
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1723
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .end local v3    # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1727
    :cond_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1728
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1729
    return-void

    .line 1727
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 1714
    :catch_1
    move-exception v1

    .line 1715
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1728
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public removeNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .line 2649
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    nop

    .line 2660
    return-void

    .line 2656
    :catch_0
    move-exception v0

    .line 2657
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNetwork("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManagement"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2658
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2653
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2654
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNetwork("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManagement"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2655
    throw v0
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .line 1213
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1214
    return-void
.end method

.method public removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 2827
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    .line 2829
    .local v0, "failures":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2831
    .local v2, "route":Landroid/net/RouteInfo;
    :try_start_0
    const-string/jumbo v3, "remove"

    const-string/jumbo v4, "local"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2834
    goto :goto_1

    .line 2832
    :catch_0
    move-exception v3

    .line 2833
    .local v3, "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v0, v0, 0x1

    .line 2835
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 2837
    :cond_0
    return v0
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .line 2131
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 2133
    .local v0, "argv":[Ljava/lang/Object;
    const-string/jumbo v1, "users"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2134
    const-string/jumbo v1, "remove"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 2136
    const/4 v1, 0x3

    .line 2138
    .local v1, "argc":I
    nop

    .line 2138
    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 2139
    add-int/lit8 v4, v1, 0x1

    .line 2139
    .local v4, "argc":I
    aget-object v5, p2, v2

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2140
    .end local v1    # "argc":I
    array-length v1, p2

    sub-int/2addr v1, v3

    if-eq v2, v1, :cond_1

    array-length v1, v0

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2138
    :cond_0
    move v1, v4

    goto :goto_2

    .line 2142
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    nop

    .line 2146
    const/4 v1, 0x3

    .line 2138
    .end local v4    # "argc":I
    .restart local v1    # "argc":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2143
    .end local v1    # "argc":I
    .restart local v4    # "argc":I
    :catch_0
    move-exception v1

    .line 2144
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 2149
    .end local v2    # "i":I
    .end local v4    # "argc":I
    .local v1, "argc":I
    :cond_2
    return-void
.end method

.method public resetPortForwardRules()V
    .locals 5

    .line 2902
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "resetPortForwardRules"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "portForward"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "reset"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2906
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    nop

    .line 2910
    return-void

    .line 2907
    :catch_0
    move-exception v1

    .line 2908
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .locals 3
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1879
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    nop

    .line 1892
    return-void

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowOnlyVpnForUids("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): netd command failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManagement"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1890
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1883
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1884
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowOnlyVpnForUids("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): netd command failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManagement"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    throw v0
.end method

.method public setDataSaverModeEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .line 1850
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSaverMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1854
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v1, p1, :cond_1

    .line 1855
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSaverMode(): already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1858
    :cond_1
    const-string v1, "bandwidthEnableDataSaver"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1860
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 1861
    .local v1, "changed":Z
    if-eqz v1, :cond_2

    .line 1862
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    goto :goto_0

    .line 1864
    :cond_2
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "): netd command silently failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    :goto_0
    nop

    .line 1871
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1866
    return v1

    .line 1871
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1867
    :catch_0
    move-exception v1

    .line 1868
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "): netd command failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1869
    const/4 v4, 0x0

    .line 1871
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    .line 1869
    return v4

    .line 1871
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 1873
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setDefaultNetId(I)V
    .locals 5
    .param p1, "netId"    # I

    .line 2704
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "default"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "set"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    nop

    .line 2711
    return-void

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsConfigurationForNetwork(I[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "params"    # [I
    .param p5, "tlsHostname"    # Ljava/lang/String;
    .param p6, "tlsServers"    # [Ljava/lang/String;

    .line 2035
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/String;

    .line 2039
    .local v8, "tlsFingerprints":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v8}, Landroid/net/INetd;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    nop

    .line 2044
    return-void

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    .line 1424
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/net/Network;->netId:I

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1427
    .local v1, "netId":I
    :goto_0
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "dns"

    aput-object v5, v4, v0

    const-string/jumbo v5, "set"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1429
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v3, p2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    .line 1430
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1429
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1434
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    nop

    .line 1438
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public setFirewallChainEnabled(IZ)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 2246
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2247
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2249
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 2252
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 2254
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    .line 2255
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2257
    if-eqz p2, :cond_1

    :try_start_4
    const-string v1, "enable_chain"

    goto :goto_0

    :cond_1
    const-string v1, "disable_chain"

    .line 2259
    .local v1, "operation":Ljava/lang/String;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2270
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 2267
    :pswitch_0
    const-string/jumbo v2, "powersave"

    .line 2268
    .local v2, "chainName":Ljava/lang/String;
    goto :goto_1

    .line 2261
    .end local v2    # "chainName":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "standby"

    .line 2262
    .restart local v2    # "chainName":Ljava/lang/String;
    goto :goto_1

    .line 2264
    .end local v2    # "chainName":Ljava/lang/String;
    :pswitch_2
    const-string v2, "dozable"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2265
    .restart local v2    # "chainName":Ljava/lang/String;
    nop

    .line 2270
    :goto_1
    nop

    .line 2274
    :try_start_5
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "firewall"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2277
    nop

    .line 2283
    if-eqz p2, :cond_3

    .line 2284
    :try_start_6
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing sockets after enabling chain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V

    .line 2287
    .end local v1    # "operation":Ljava/lang/String;
    .end local v2    # "chainName":Ljava/lang/String;
    :cond_3
    monitor-exit v0

    .line 2288
    return-void

    .line 2275
    .restart local v1    # "operation":Ljava/lang/String;
    .restart local v2    # "chainName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2276
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 2270
    .end local v2    # "chainName":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad child chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2255
    .end local v1    # "operation":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 2287
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFirewallEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 2153
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "firewall"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v4, "whitelist"

    goto :goto_0

    :cond_0
    const-string v4, "blacklist"

    :goto_0
    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2156
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    nop

    .line 2160
    return-void

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .line 2170
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2171
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2172
    if-eqz p2, :cond_0

    const-string v0, "allow"

    goto :goto_0

    :cond_0
    const-string v0, "deny"

    .line 2174
    .local v0, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "set_interface_rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    nop

    .line 2178
    return-void

    .line 2175
    :catch_0
    move-exception v1

    .line 2176
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRule(III)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 2354
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2355
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2356
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 2357
    monitor-exit v0

    .line 2358
    return-void

    .line 2357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFirewallUidRules(I[I[I)V
    .locals 10
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    .line 2305
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2306
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2308
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 2309
    .local v2, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 2311
    .local v3, "newRules":Landroid/util/SparseIntArray;
    array-length v4, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 2311
    .local v4, "index":I
    :goto_0
    if-ltz v4, :cond_0

    .line 2312
    aget v6, p2, v4

    .line 2313
    .local v6, "uid":I
    aget v7, p3, v4

    .line 2314
    .local v7, "rule":I
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 2315
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    .end local v6    # "uid":I
    .end local v7    # "rule":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2318
    .end local v4    # "index":I
    :cond_0
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 2319
    .local v4, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .line 2319
    .local v6, "index":I
    :goto_1
    const/4 v7, 0x0

    if-ltz v6, :cond_2

    .line 2320
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2321
    .local v8, "uid":I
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_1

    .line 2322
    invoke-virtual {v4, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    .end local v8    # "uid":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2326
    .end local v6    # "index":I
    :cond_2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .line 2326
    .restart local v6    # "index":I
    :goto_2
    if-ltz v6, :cond_3

    .line 2327
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2328
    .restart local v8    # "uid":I
    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 2326
    .end local v8    # "uid":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2330
    .end local v2    # "uidFirewallRules":Landroid/util/SparseIntArray;
    .end local v3    # "newRules":Landroid/util/SparseIntArray;
    .end local v4    # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v6    # "index":I
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2332
    packed-switch p1, :pswitch_data_0

    .line 2344
    :try_start_2
    const-string v1, "NetworkManagement"

    goto :goto_3

    .line 2340
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_powersave"

    invoke-interface {v1, v2, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2341
    goto :goto_4

    .line 2337
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_standby"

    invoke-interface {v1, v2, v7, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2338
    goto :goto_4

    .line 2334
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_dozable"

    invoke-interface {v1, v2, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2335
    goto :goto_4

    .line 2344
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFirewallUidRules() called on invalid chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2348
    :goto_4
    goto :goto_5

    .line 2346
    :catch_0
    move-exception v1

    .line 2347
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error flushing firewall chain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2349
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2350
    return-void

    .line 2330
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 2349
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGlobalAlert(J)V
    .locals 5
    .param p1, "alertBytes"    # J

    .line 1785
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1792
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "bandwidth"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "setglobalalert"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    nop

    .line 1796
    return-void

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    nop

    .line 1194
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .line 1733
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1744
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1745
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1751
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setinterfacealert"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1752
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1755
    nop

    .line 1756
    :try_start_2
    monitor-exit v0

    .line 1757
    return-void

    .line 1753
    :catch_0
    move-exception v1

    .line 1754
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1746
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has alert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1741
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setting alert requires existing quota on iface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .line 1118
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1120
    .local v0, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1124
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setcfg"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 1125
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1126
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1128
    .local v3, "flag":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1129
    .end local v3    # "flag":Ljava/lang/String;
    goto :goto_0

    .line 1132
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    nop

    .line 1136
    return-void

    .line 1133
    :catch_0
    move-exception v2

    .line 1134
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1121
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null LinkAddress given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 1140
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1142
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 1143
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1144
    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1156
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "ipv6privacyextensions"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    .line 1159
    if-eqz p2, :cond_0

    const-string v4, "enable"

    goto :goto_0

    :cond_0
    const-string v4, "disable"

    :goto_0
    aput-object v4, v2, v3

    .line 1158
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    nop

    .line 1163
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1662
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    .line 1675
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setiquota"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1676
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1679
    nop

    .line 1681
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1682
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1684
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    :try_start_4
    invoke-interface {v3, p1, p2, p3}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1688
    goto :goto_1

    .line 1685
    :catch_0
    move-exception v4

    .line 1686
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem setting tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1687
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1686
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    .end local v3    # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1690
    :cond_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1691
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1692
    return-void

    .line 1690
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 1677
    :catch_1
    move-exception v1

    .line 1678
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1670
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has quota"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1691
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1150
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1151
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1152
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1312
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "ipfwd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, "enable"

    goto :goto_0

    :cond_0
    const-string v4, "disable"

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "tethering"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    nop

    .line 1318
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .line 1276
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "setmtu"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    nop

    .line 1282
    nop

    .line 1284
    return-void

    .line 1281
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkPermission(ILjava/lang/String;)V
    .locals 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 2726
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 2730
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "permission"

    aput-object v8, v7, v4

    const-string/jumbo v4, "network"

    aput-object v4, v7, v3

    const-string/jumbo v3, "set"

    aput-object v3, v7, v2

    aput-object p2, v7, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto :goto_0

    .line 2734
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2732
    :cond_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v7, "permission"

    aput-object v7, v0, v4

    const-string/jumbo v4, "network"

    aput-object v4, v0, v3

    const-string v3, "clear"

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v5, v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2736
    :goto_0
    nop

    .line 2737
    return-void

    .line 2734
    :goto_1
    nop

    .line 2735
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uids"    # [I

    .line 2742
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 2745
    .local v0, "argv":[Ljava/lang/Object;
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2746
    const-string/jumbo v1, "user"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2747
    const-string/jumbo v1, "set"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 2748
    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 2749
    const/4 v1, 0x4

    .line 2751
    .local v1, "argc":I
    nop

    .line 2751
    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 2752
    add-int/lit8 v4, v1, 0x1

    .line 2752
    .local v4, "argc":I
    aget v5, p2, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2753
    .end local v1    # "argc":I
    array-length v1, p2

    sub-int/2addr v1, v3

    if-eq v2, v1, :cond_1

    array-length v1, v0

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2751
    :cond_0
    move v1, v4

    goto :goto_2

    .line 2755
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2758
    nop

    .line 2759
    const/4 v1, 0x4

    .line 2751
    .end local v4    # "argc":I
    .restart local v1    # "argc":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2756
    .end local v1    # "argc":I
    .restart local v4    # "argc":I
    :catch_0
    move-exception v1

    .line 2757
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 2762
    .end local v2    # "i":I
    .end local v4    # "argc":I
    .local v1, "argc":I
    :cond_2
    return-void
.end method

.method public setPortForwardRules(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Z
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "fromPort"    # Ljava/lang/String;
    .param p4, "toPort"    # Ljava/lang/String;

    .line 2891
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPortForwardRules: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " proto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fromPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " toPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "portForward"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p1, :cond_0

    const-string v3, "add"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "remove"

    :goto_0
    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2895
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2898
    nop

    .line 2899
    return-void

    .line 2896
    :catch_0
    move-exception v1

    .line 2897
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 1920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1925
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1926
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1

    .line 1929
    monitor-exit v0

    return-void

    .line 1932
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_2

    .line 1935
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1936
    monitor-exit v0

    return-void

    .line 1943
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 1945
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1948
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1949
    .end local v1    # "oldPolicy":I
    monitor-exit v0

    .line 1950
    return-void

    .line 1949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 1840
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1841
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 1845
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1846
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 1289
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string v0, "NetworkManagement"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return-void
.end method

.method public startClatd(Ljava/lang/String;)V
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "clatd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "start"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2462
    nop

    .line 2463
    return-void

    .line 2460
    :catch_0
    move-exception v0

    .line 2461
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .line 1471
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .locals 5
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1327
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v1, p1

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, p1, v4

    .line 1328
    .local v2, "d":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1327
    .end local v2    # "d":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    nop

    .line 1336
    return-void

    .line 1333
    :catch_0
    move-exception v1

    .line 1334
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public stopClatd(Ljava/lang/String;)V
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2467
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "clatd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "stop"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2473
    nop

    .line 2474
    return-void

    .line 2471
    :catch_0
    move-exception v0

    .line 2472
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .line 1477
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method public stopTethering()V
    .locals 5

    .line 1340
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "stop"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    nop

    .line 1346
    return-void

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public systemReady()V
    .locals 7

    .line 418
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 422
    .local v2, "delta":J
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepared in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    .end local v0    # "start":J
    .end local v2    # "delta":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 427
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .line 1366
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "add"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1371
    nop

    .line 1373
    const/4 v0, 0x0

    move-object v1, v0

    .line 1375
    .local v1, "currentIfaces":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 1378
    goto :goto_0

    .line 1376
    :catch_0
    move-exception v2

    .line 1377
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error listing Interfaces :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    .line 1380
    .local v2, "found":Z
    if-eqz v1, :cond_1

    .line 1381
    array-length v3, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 1382
    .local v5, "currIface":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1383
    const/4 v2, 0x1

    .line 1384
    goto :goto_2

    .line 1381
    .end local v5    # "currIface":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1388
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 1389
    return-void

    .line 1391
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v3, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v4, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v5

    invoke-direct {v4, v5, v0, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    invoke-virtual {p0, p1, v3}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1396
    return-void

    .line 1369
    .end local v1    # "currentIfaces":[Ljava/lang/String;
    .end local v2    # "found":Z
    .end local v3    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_1
    move-exception v0

    .line 1370
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;

    .line 609
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    monitor-exit v0

    return-void

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mLimitHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/NetworkManagementService$1;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .line 2498
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2499
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .line 448
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 450
    return-void
.end method

.method public unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;

    .line 601
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 1400
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "interface"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "remove"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1407
    nop

    .line 1408
    return-void

    .line 1406
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1406
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    throw v0
.end method
