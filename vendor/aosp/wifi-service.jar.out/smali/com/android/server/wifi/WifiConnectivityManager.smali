.class public Lcom/android/server/wifi/WifiConnectivityManager;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    }
.end annotation


# static fields
.field public static final BSSID_BLACKLIST_EXPIRE_TIME_MS:I = 0x493e0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CARRIER_NETWORK_EVALUATOR_PRIORITY:I = 0x4

.field private static final CHANNEL_LIST_AGE_MS:I = 0x36ee80

.field private static final CONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x27100

.field private static final DISCONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x124f8

.field private static final LOW_RSSI_NETWORK_RETRY_MAX_DELAY_MS:I = 0x13880

.field private static final LOW_RSSI_NETWORK_RETRY_START_DELAY_MS:I = 0x4e20

.field public static final MAX_CONNECTION_ATTEMPTS_RATE:I = 0x6

.field public static final MAX_CONNECTION_ATTEMPTS_TIME_INTERVAL_MS:I = 0x3a980

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS:I = 0x27100
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_SCAN_RESTART_ALLOWED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final OP_WIFI_SCAN_RSSI_THRESHOLD:I = -0x3c

.field private static final OP_WIFI_SCAN_THRESHOLD:I = 0x3

.field private static final PASSPOINT_NETWORK_EVALUATOR_PRIORITY:I = 0x2

.field public static final PERIODIC_SCAN_INTERVAL_MS:I = 0x4e20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Periodic Scan Timer"

.field public static final REASON_CODE_AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field public static final RESTART_CONNECTIVITY_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Scan"

.field private static final RESTART_SCAN_DELAY_MS:I = 0x7d0

.field public static final RESTART_SINGLE_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Single Scan"

.field private static final SAVED_NETWORK_EVALUATOR_PRIORITY:I = 0x1

.field private static final SCAN_IMMEDIATELY:Z = true

.field private static final SCAN_ON_SCHEDULE:Z = false

.field private static final SCORED_NETWORK_EVALUATOR_PRIORITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityManager"

.field private static final WATCHDOG_INTERVAL_MS:I = 0x6ddd00

.field public static final WATCHDOG_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Watchdog Timer"

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I = 0x2

.field public static final WIFI_STATE_TRANSITIONING:I = 0x3

.field public static final WIFI_STATE_UNKNOWN:I


# instance fields
.field private DBG:Z

.field final co:Landroid/database/ContentObserver;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

.field private mBand5GHzBonus:I

.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

.field private mCarrierNetworkEvaluator:Lcom/android/server/wifi/CarrierNetworkEvaluator;

.field private final mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionAttemptTimeStamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private mContext:Landroid/content/Context;

.field private mCurrentConnectionBonus:I

.field private mDbg:Z

.field private mEnableAutoJoinWhenAssociated:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mFullScanMaxRxRate:I

.field private mFullScanMaxTxRate:I

.field private mInitialScoreMax:I

.field private mLastAddScanIntervalTimeStamp:J

.field private mLastConnectionAttemptBssid:Ljava/lang/String;

.field private mLastPeriodicSingleScanTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMin24GHzRssi:I

.field private mMin5GHzRssi:I

.field private mMiracastMode:I

.field private final mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private final mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

.field private final mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPeriodicScanTimerSet:Z

.field private mPeriodicSingleScanInterval:I

.field private final mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

.field private mPnoScanStarted:Z

.field private final mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSameNetworkBonus:I

.field private mScanRestartCount:I

.field private final mScanner:Landroid/net/wifi/WifiScanner;

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private mScreenOn:Z

.field private mSecureBonus:I

.field private mSingleScanRestartCount:I

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mTotalConnectivityAttemptsRateLimited:I

.field private mUntrustedConnectionAllowed:Z

.field private mUseSingleRadioChainScanResults:Z

.field private mWaitForFullBandScanResults:Z

.field private final mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWifiConnectivityManagerEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiState:I

.field private mWifiSwitchNetwork:Z

.field private opScanThreshold:I

.field private openNetworkNotificationOn:Z

.field private skipScan:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/OpenNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkConfig;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/CarrierNetworkEvaluator;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p3, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p4, "scanner"    # Landroid/net/wifi/WifiScanner;
    .param p5, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p6, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p7, "networkSelector"    # Lcom/android/server/wifi/WifiNetworkSelector;
    .param p8, "connectivityHelper"    # Lcom/android/server/wifi/WifiConnectivityHelper;
    .param p9, "wifiLastResortWatchdog"    # Lcom/android/server/wifi/WifiLastResortWatchdog;
    .param p10, "openNetworkNotifier"    # Lcom/android/server/wifi/OpenNetworkNotifier;
    .param p11, "carrierNetworkNotifier"    # Lcom/android/server/wifi/CarrierNetworkNotifier;
    .param p12, "carrierNetworkConfig"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .param p13, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p14, "looper"    # Landroid/os/Looper;
    .param p15, "clock"    # Lcom/android/server/wifi/Clock;
    .param p16, "localLog"    # Landroid/util/LocalLog;
    .param p17, "enable"    # Z
    .param p18, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p19, "savedNetworkEvaluator"    # Lcom/android/server/wifi/SavedNetworkEvaluator;
    .param p20, "scoredNetworkEvaluator"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;
    .param p21, "passpointNetworkEvaluator"    # Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;
    .param p22, "carrierNetworkEvaluator"    # Lcom/android/server/wifi/CarrierNetworkEvaluator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p17

    .line 648
    move-object/from16 v3, p22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    .line 173
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 174
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 175
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 176
    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    .line 177
    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 178
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 179
    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 180
    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    .line 181
    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 182
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 183
    const/16 v7, 0x4e20

    iput v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 184
    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 185
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 186
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 189
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 190
    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mUseSingleRadioChainScanResults:Z

    .line 203
    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->opScanThreshold:I

    .line 206
    iput-wide v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastAddScanIntervalTimeStamp:J

    .line 208
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiSwitchNetwork:Z

    .line 232
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    .line 239
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->skipScan:Z

    .line 251
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    .line 265
    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$1;

    invoke-direct {v7, v0}, Lcom/android/server/wifi/WifiConnectivityManager$1;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 289
    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$2;

    invoke-direct {v7, v0}, Lcom/android/server/wifi/WifiConnectivityManager$2;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 298
    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$3;

    invoke-direct {v7, v0}, Lcom/android/server/wifi/WifiConnectivityManager$3;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 452
    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    .line 590
    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    .line 939
    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->openNetworkNotificationOn:Z

    .line 940
    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$7;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, v0, v8}, Lcom/android/server/wifi/WifiConnectivityManager$7;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->co:Landroid/database/ContentObserver;

    .line 650
    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 651
    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    .line 652
    move-object/from16 v9, p5

    iput-object v9, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 653
    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 654
    move-object/from16 v11, p7

    iput-object v11, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 655
    move-object/from16 v12, p8

    iput-object v12, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    .line 656
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    .line 657
    move-object/from16 v14, p9

    iput-object v14, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 658
    move-object/from16 v15, p10

    iput-object v15, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    .line 659
    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    .line 660
    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 661
    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 662
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 663
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v5, p14

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 664
    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 665
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 666
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    .line 668
    iput-object v1, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    .line 672
    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    .line 673
    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    const/16 v5, 0x960

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    .line 686
    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    const/16 v5, 0x960

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ScoringParams;->getGoodRssi(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 687
    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ScoringParams;->getGoodRssi(I)I

    move-result v5

    .line 686
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxTxRate:I

    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxRxRate:I

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PNO settings: min5GHzRssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " min24GHzRssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentConnectionBonus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sameNetworkBonus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " secureNetworkBonus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " initialScoreMax "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi.passpoint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 706
    .local v4, "hs2Enabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Passpoint is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const-string v6, "enabled"

    goto :goto_0

    :cond_0
    const-string v6, "disabled"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 709
    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    move-object/from16 v6, p19

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    .line 711
    if-eqz v4, :cond_1

    .line 712
    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v7, 0x2

    move/from16 v16, v4

    move-object/from16 v4, p21

    invoke-virtual {v5, v4, v7}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    goto :goto_1

    .line 715
    :cond_1
    move/from16 v16, v4

    move-object/from16 v4, p21

    .end local v4    # "hs2Enabled":Z
    .local v16, "hs2Enabled":Z
    :goto_1
    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v7, 0x3

    move-object/from16 v4, p20

    invoke-virtual {v5, v4, v7}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    .line 718
    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v7, 0x4

    invoke-virtual {v5, v3, v7}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    .line 720
    iput-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkEvaluator:Lcom/android/server/wifi/CarrierNetworkEvaluator;

    .line 724
    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 727
    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    new-instance v7, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v7, v0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiConfigManager;->setOnSavedNetworkUpdateListener(Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;)V

    .line 729
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectivityScanManager initialized and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    if-eqz v2, :cond_2

    const-string v5, "enabled"

    goto :goto_2

    :cond_2
    const-string v5, "disabled"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 734
    new-instance v3, Lcom/android/server/wifi/WifiConnectivityManager$4;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiConnectivityManager$4;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 743
    new-instance v3, Lcom/android/server/wifi/WifiConnectivityManager$5;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiConnectivityManager$5;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_networks_available_notification_on"

    .line 752
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->co:Landroid/database/ContentObserver;

    .line 751
    const/4 v1, 0x0

    invoke-virtual {v3, v5, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 754
    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_networks_available_notification_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v1, 0x1

    if-ne v3, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v0, Lcom/android/server/wifi/WifiConnectivityManager;->openNetworkNotificationOn:Z

    .line 756
    iget-object v1, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_should_switch_network"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$6;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, v0, v7}, Lcom/android/server/wifi/WifiConnectivityManager$6;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Landroid/os/Handler;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 771
    iget-object v1, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_should_switch_network"

    invoke-static {v1, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    move v7, v3

    nop

    :cond_4
    iput-boolean v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiSwitchNetwork:Z

    .line 774
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConnectivityManager;ZLandroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUseSingleRadioChainScanResults:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedSingleScan(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return p1
.end method

.method static synthetic access$1608(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiConnectivityManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedConnectivityScan(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->watchdogHandler()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->skipScan:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiSwitchNetwork:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiSwitchNetwork:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiConnectivityManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/WifiConnectivityManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # J

    .line 73
    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastAddScanIntervalTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->periodicScanTimerHandler()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->openNetworkNotificationOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScanResults(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private buildBssidBlacklist()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1538
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1539
    .local v0, "blacklistedBssids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1540
    .local v2, "bssid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1541
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1543
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1545
    :cond_1
    return-object v0
.end method

.method private buildBssidBlacklistMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1554
    .local v0, "bssidBlacklistMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 1555
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    :cond_0
    goto :goto_0

    .line 1560
    :cond_1
    return-object v0
.end method

.method private cancelPeriodicScanTimer()V
    .locals 2

    .line 1210
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 1214
    :cond_0
    return-void
.end method

.method private clearBssidBlacklist()V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1641
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    .line 1642
    return-void
.end method

.method private clearConnectionAttemptTimeStamps()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 811
    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 10
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    .line 820
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 821
    .local v0, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    if-nez v0, :cond_0

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToNetwork: bad candidate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " scanResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 824
    return-void

    .line 827
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 828
    .local v1, "targetBssid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "targetAssociationId":Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 835
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 836
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 837
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToNetwork: Either already connected or is connecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 840
    return-void

    .line 843
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v4, "any"

    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 845
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecToNetwork: target BSSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the config specified BSSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Drop it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 848
    return-void

    .line 851
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    .line 852
    .local v3, "elapsedTimeMillis":J
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v5, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldSkipConnectionAttempt(Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 853
    const-string v5, "connectToNetwork: Too many connection attempts. Skipping this attempt!"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 854
    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 855
    return-void

    .line 857
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->noteConnectionAttempt(Ljava/lang/Long;)V

    .line 859
    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 861
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 862
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 863
    .local v5, "currentConnectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_5

    const-string v6, "Disconnected"

    goto :goto_0

    .line 864
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 866
    .local v6, "currentAssociationId":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_7

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, v8, :cond_7

    .line 872
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 874
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Roaming candidate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". The actual roaming target is up to the firmware."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 877
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Roaming to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 879
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v0}, Lcom/android/server/wifi/WifiStateMachine;->startRoamToNetwork(ILandroid/net/wifi/ScanResult;)V

    goto :goto_2

    .line 885
    :cond_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v8, "any"

    .line 886
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 887
    :cond_8
    const-string v1, "any"

    .line 888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 891
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 894
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v9, 0x3f2

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->startConnectToNetwork(IILjava/lang/String;)V

    .line 896
    :goto_2
    return-void
.end method

.method private getScanBand()I
    .locals 1

    .line 900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v0

    return v0
.end method

.method private getScanBand(Z)I
    .locals 1
    .param p1, "isFullBandScan"    # Z

    .line 904
    if-eqz p1, :cond_0

    .line 905
    const/4 v0, 0x7

    return v0

    .line 908
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleScanResults(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p2, "listenerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 315
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->refreshBssidBlacklist()V

    .line 317
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResults: No network selection because supplicantTransientState is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 320
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 321
    return v1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResults: start network selection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 328
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->buildBssidBlacklistMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 334
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isDisconnected()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 328
    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi/WifiNetworkSelector;->selectNetwork(Ljava/util/List;Ljava/util/Map;Landroid/net/wifi/WifiInfo;ZZZ)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 336
    .local v0, "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 337
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNetworkSelector;->getConnectableScanDetails()Ljava/util/List;

    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateAvailableNetworks(Ljava/util/List;)V

    .line 338
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiMetrics;->countScanResults(Ljava/util/List;)V

    .line 339
    if-eqz v0, :cond_1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":  WNS candidate-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 342
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 345
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 346
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNetworkSelector;->getFilteredScanDetailsForOpenUnsavedNetworks()Ljava/util/List;

    move-result-object v3

    .line 345
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleScanResults(Ljava/util/List;)V

    .line 347
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-virtual {v2}, Lcom/android/server/wifi/CarrierNetworkConfig;->isCarrierEncryptionInfoAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 349
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->getFilteredScanDetailsForCarrierUnsavedNetworks(Lcom/android/server/wifi/CarrierNetworkConfig;)Ljava/util/List;

    move-result-object v3

    .line 348
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleScanResults(Ljava/util/List;)V

    .line 353
    :cond_2
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectivityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    return-void
.end method

.method private noteConnectionAttempt(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .line 802
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 803
    return-void
.end method

.method private periodicScanTimerHandler()V
    .locals 1

    .line 1073
    const-string v0, "periodicScanTimerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 1079
    :cond_0
    return-void
.end method

.method private refreshBssidBlacklist()V
    .locals 11

    .line 1606
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    return-void

    .line 1610
    :cond_0
    const/4 v0, 0x0

    .line 1611
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1612
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1614
    .local v2, "currentTimeStamp":Ljava/lang/Long;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 1617
    .local v3, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    iget-boolean v4, v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklistedLowSignal:Z

    const-wide/32 v5, 0x493e0

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    sub-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-ltz v4, :cond_1

    .line 1619
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1620
    const/4 v0, 0x1

    .line 1621
    goto :goto_0

    .line 1624
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    sub-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-ltz v4, :cond_2

    .line 1626
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1627
    const/4 v0, 0x1

    .line 1629
    .end local v3    # "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    :cond_2
    goto :goto_0

    .line 1631
    :cond_3
    if-eqz v0, :cond_4

    .line 1632
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    .line 1634
    :cond_4
    return-void
.end method

.method private resetLastPeriodicSingleScanTimeStamp()V
    .locals 2

    .line 1068
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 1069
    return-void
.end method

.method private scheduleDelayedConnectivityScan(I)V
    .locals 8
    .param p1, "msFromNow"    # I

    .line 1230
    const-string v0, "scheduleDelayedConnectivityScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1233
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v4, v2

    const-string v0, "WifiConnectivityManager Restart Scan"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1232
    const/4 v2, 0x2

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1237
    return-void
.end method

.method private scheduleDelayedSingleScan(Z)V
    .locals 8
    .param p1, "isFullBandScan"    # Z

    .line 1218
    const-string v0, "scheduleDelayedSingleScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1220
    new-instance v6, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 1222
    .local v6, "restartSingleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    const-string v0, "WifiConnectivityManager Restart Single Scan"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1222
    const/4 v2, 0x2

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1226
    return-void
.end method

.method private schedulePeriodicScanTimer(I)V
    .locals 8
    .param p1, "intervalMs"    # I

    .line 1201
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1202
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v3, v1

    const-string v5, "WifiConnectivityManager Schedule Periodic Scan Timer"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1201
    const/4 v1, 0x2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 1206
    return-void
.end method

.method private scheduleWatchdogTimer()V
    .locals 8

    .line 1191
    const-string v0, "scheduleWatchdogTimer"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1193
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1194
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v4, v2

    const-string v0, "WifiConnectivityManager Schedule Watchdog Timer"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1193
    const/4 v2, 0x2

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1197
    return-void
.end method

.method private setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 9
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 915
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 917
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 918
    return v1

    .line 921
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 923
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    .line 922
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->fetchChannelSetForNetworkForPartialScan(IJI)Ljava/util/Set;

    move-result-object v2

    .line 925
    .local v2, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, "index":I
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 928
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 929
    .local v4, "freq":Ljava/lang/Integer;
    iget-object v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v6, v1, 0x1

    .local v6, "index":I
    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v5, v1

    .line 930
    .end local v1    # "index":I
    .end local v4    # "freq":Ljava/lang/Integer;
    nop

    .line 928
    move v1, v6

    goto :goto_0

    .line 931
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 933
    .end local v1    # "index":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No scan channels for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Perform full band scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 934
    return v1
.end method

.method private shouldSkipConnectionAttempt(Ljava/lang/Long;)Z
    .locals 6
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .line 782
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 784
    .local v0, "attemptIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 786
    .local v1, "connectionAttemptTimeMillis":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3a980

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 788
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 793
    .end local v1    # "connectionAttemptTimeMillis":Ljava/lang/Long;
    goto :goto_0

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private start()V
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->getFirmwareRoamingInfo()Z

    .line 1649
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    .line 1650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1651
    return-void
.end method

.method private startConnectivityScan(Z)V
    .locals 3
    .param p1, "scanImmediately"    # Z

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startConnectivityScan: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wifiState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1243
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scanImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wifiConnectivityManagerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1249
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1254
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1258
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-eq v0, v2, :cond_1

    .line 1259
    return-void

    .line 1262
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicScan(Z)V

    goto :goto_0

    .line 1265
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-nez v0, :cond_3

    .line 1266
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startDisconnectedPnoScan()V

    .line 1270
    :cond_3
    :goto_0
    return-void

    .line 1250
    :cond_4
    :goto_1
    return-void
.end method

.method private startDisconnectedPnoScan()V
    .locals 6

    .line 1147
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 1148
    .local v0, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->retrievePnoNetworkList()Ljava/util/List;

    move-result-object v1

    .line 1149
    .local v1, "pnoNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1151
    .local v2, "listSize":I
    if-nez v2, :cond_0

    .line 1153
    const-string v3, "No saved network for starting disconnected PNO."

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1154
    return-void

    .line 1157
    :cond_0
    new-array v3, v2, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 1158
    iget-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 1159
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 1160
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 1161
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    .line 1162
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    .line 1163
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    .line 1164
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    .line 1165
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    .line 1168
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 1169
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1170
    const/4 v4, 0x4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1171
    const/4 v4, 0x0

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 1172
    const v4, 0x124f8

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1174
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    .line 1176
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4, v3, v0, v5}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    .line 1177
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 1178
    return-void
.end method

.method private startPeriodicScan(Z)V
    .locals 2
    .param p1, "scanImmediately"    # Z

    .line 1125
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 1128
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    if-nez v0, :cond_0

    .line 1129
    return-void

    .line 1134
    :cond_0
    if-eqz p1, :cond_1

    .line 1135
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1137
    :cond_1
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 1138
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastAddScanIntervalTimeStamp:J

    .line 1139
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 1140
    return-void
.end method

.method private startPeriodicSingleScan()V
    .locals 14

    .line 971
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 973
    .local v0, "currentTimeStamp":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 974
    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    sub-long v2, v0, v2

    .line 975
    .local v2, "msSinceLastScan":J
    const-wide/16 v4, 0x4e20

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last periodic single scan started "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms ago, defer this new scan request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 978
    long-to-int v4, v2

    rsub-int v4, v4, 0x4e20

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 979
    return-void

    .line 984
    .end local v2    # "msSinceLastScan":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 985
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .line 986
    .local v3, "isExistSaveNetorks":Z
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 987
    const/4 v3, 0x1

    .line 990
    :cond_1
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v5, 0x0

    const v6, 0x27100

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    .line 991
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiSwitchNetwork:Z

    if-nez v4, :cond_2

    return-void

    .line 992
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/16 v8, -0x3c

    if-le v4, v8, :cond_4

    .line 993
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->opScanThreshold:I

    const/4 v8, 0x3

    if-ge v4, v8, :cond_3

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi is connected and its rssi is good("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), and the opScanThreshold is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", now the threshold is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->opScanThreshold:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",so reduce the wifi scan frequency"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 997
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->opScanThreshold:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->opScanThreshold:I

    .line 998
    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 999
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 1000
    return-void

    .line 1002
    :cond_3
    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->opScanThreshold:I

    .line 1007
    :cond_4
    const/4 v4, 0x1

    .line 1008
    .local v4, "isScanNeeded":Z
    const/4 v8, 0x1

    .line 1009
    .local v8, "isFullBandScan":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v9, v9, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget v11, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxTxRate:I

    int-to-double v11, v11

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v9, v9, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget v11, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxRxRate:I

    int-to-double v11, v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_1

    :cond_6
    :goto_0
    move v5, v7

    .line 1013
    .local v5, "isTrafficOverThreshold":Z
    :goto_1
    iget v9, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v9, v7, :cond_8

    if-eqz v5, :cond_8

    .line 1017
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1018
    const-string v7, "No partial scan because firmware roaming is supported."

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1019
    const/4 v4, 0x0

    goto :goto_2

    .line 1021
    :cond_7
    const-string v7, "No full band scan due to ongoing traffic"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1022
    const/4 v8, 0x0

    .line 1026
    :cond_8
    :goto_2
    if-eqz v4, :cond_e

    .line 1027
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 1028
    sget-object v7, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-direct {p0, v8, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    .line 1032
    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_b

    .line 1033
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->openNetworkNotificationOn:Z

    if-nez v7, :cond_a

    if-eqz v3, :cond_9

    goto :goto_3

    .line 1039
    :cond_9
    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    goto :goto_4

    .line 1034
    :cond_a
    :goto_3
    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastAddScanIntervalTimeStamp:J

    sub-long v10, v0, v10

    const-wide/32 v12, 0x27100

    cmp-long v7, v10, v12

    if-lez v7, :cond_c

    .line 1035
    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    mul-int/2addr v7, v9

    iput v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 1036
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastAddScanIntervalTimeStamp:J

    goto :goto_4

    .line 1043
    :cond_b
    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    mul-int/2addr v7, v9

    iput v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 1053
    :cond_c
    :goto_4
    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    if-le v7, v6, :cond_d

    .line 1054
    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 1057
    :cond_d
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    goto :goto_5

    .line 1061
    :cond_e
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 1063
    :goto_5
    return-void
.end method

.method private startSingleScan(ZLandroid/os/WorkSource;)V
    .locals 4
    .param p1, "isFullBandScan"    # Z
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 1083
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-virtual {v0, p2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    if-ne v0, v1, :cond_2

    .line 1094
    :cond_1
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore connectivity scan, MiracastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 1100
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 1101
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p1, :cond_3

    .line 1102
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1103
    const/4 p1, 0x1

    .line 1106
    :cond_3
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 1107
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1108
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1110
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 1112
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1113
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->retrieveHiddenNetworkList()Ljava/util/List;

    move-result-object v1

    .line 1114
    .local v1, "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    nop

    .line 1115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 1117
    new-instance v2, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 1119
    .local v2, "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {v3, v0, v2, p2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 1120
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectivityOneshotScanCount()V

    .line 1121
    return-void

    .line 1084
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v1    # "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    .end local v2    # "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    :cond_4
    :goto_0
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1308
    packed-switch p0, :pswitch_data_0

    .line 1316
    const-string v0, "unknown"

    return-object v0

    .line 1314
    :pswitch_0
    const-string v0, "transitioning"

    return-object v0

    .line 1312
    :pswitch_1
    const-string v0, "disconnected"

    return-object v0

    .line 1310
    :pswitch_2
    const-string v0, "connected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stop()V
    .locals 2

    .line 1657
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1658
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    .line 1659
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1660
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/OpenNetworkNotifier;->clearPendingNotification(Z)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/CarrierNetworkNotifier;->clearPendingNotification(Z)V

    .line 1662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1664
    return-void
.end method

.method private stopConnectivityScan()V
    .locals 1

    .line 1276
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelPeriodicScanTimer()V

    .line 1277
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopPnoScan()V

    .line 1278
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 1279
    return-void
.end method

.method private stopPnoScan()V
    .locals 2

    .line 1182
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 1186
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 1187
    return-void
.end method

.method private updateBssidBlacklist(Ljava/lang/String;ZILandroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "reasonCode"    # I
    .param p4, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 1420
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1421
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 1426
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 1427
    .local v2, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    if-nez v2, :cond_2

    .line 1429
    new-instance v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    invoke-direct {v3}, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;-><init>()V

    move-object v2, v3

    .line 1430
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    .line 1435
    iput-object p4, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->scanResult:Landroid/net/wifi/ScanResult;

    .line 1436
    const/4 v3, 0x3

    const/16 v4, 0x11

    if-eqz p4, :cond_5

    if-eqz p4, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 1438
    invoke-virtual {v5, p4}, Lcom/android/server/wifi/WifiNetworkSelector;->isSignalSufficient(Landroid/net/wifi/ScanResult;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    if-ne p3, v4, :cond_4

    goto :goto_0

    .line 1449
    :cond_4
    iget v4, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counterLowSignal:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counterLowSignal:I

    .line 1450
    iget-boolean v4, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklistedLowSignal:Z

    if-nez v4, :cond_7

    .line 1451
    iget v4, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counterLowSignal:I

    if-lt v4, v3, :cond_7

    .line 1452
    iput-boolean v1, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklistedLowSignal:Z

    .line 1453
    return v1

    .line 1440
    :cond_5
    :goto_0
    iget v5, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    .line 1441
    iget-boolean v5, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-nez v5, :cond_7

    .line 1442
    iget v5, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    if-ge v5, v3, :cond_6

    if-ne p3, v4, :cond_7

    .line 1444
    :cond_6
    iput-boolean v1, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    .line 1445
    return v1

    .line 1469
    :cond_7
    return v0
.end method

.method private updateFirmwareRoamingConfiguration()V
    .locals 6

    .line 1570
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->getMaxNumBlacklistBssid()I

    move-result v0

    .line 1575
    .local v0, "maxBlacklistSize":I
    if-gtz v0, :cond_1

    .line 1576
    const-string v1, "WifiConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid max BSSID blacklist size:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void

    .line 1580
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->buildBssidBlacklist()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1581
    .local v1, "blacklistedBssids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1583
    .local v2, "blacklistSize":I
    if-le v2, v0, :cond_2

    .line 1584
    const-string v3, "WifiConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " blacklisted BSSIDs, max size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 1589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trim down BSSID blacklist size from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1589
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1593
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wifi/WifiConnectivityHelper;->setFirmwareRoamingConfiguration(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1595
    const-string v3, "Failed to set firmware roaming configuration."

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1597
    :cond_3
    return-void
.end method

.method private updateRunningState()V
    .locals 1

    .line 1673
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 1674
    const-string v0, "Starting up WifiConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1675
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->start()V

    goto :goto_0

    .line 1677
    :cond_0
    const-string v0, "Stopping WifiConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1678
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stop()V

    .line 1680
    :goto_0
    return-void
.end method

.method private watchdogHandler()V
    .locals 2

    .line 961
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 962
    const-string v0, "start a single scan from watchdogHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 964
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 965
    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    .line 967
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1717
    const-string v0, "Dump of WifiConnectivityManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    const-string v0, "WifiConnectivityManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1720
    const-string v0, "WifiConnectivityManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/OpenNetworkNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/CarrierNetworkNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method public enable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set WiFiConnectivityManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1699
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 1700
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateRunningState()V

    .line 1701
    return-void
.end method

.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    .line 254
    return-void
.end method

.method public forceConnectivityScan(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceConnectivityScan in request of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1400
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    .line 1401
    return-void
.end method

.method getLastPeriodicSingleScanTimeStamp()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1710
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    return-wide v0
.end method

.method getLowRssiNetworkRetryDelay()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1705
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->getLowRssiNetworkRetryDelay()I

    move-result v0

    return v0
.end method

.method public handleConnectionAttemptEnded(I)V
    .locals 1
    .param p1, "failureCode"    # I

    .line 1356
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleConnectionFailure()V

    .line 1358
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleConnectionFailure()V

    .line 1360
    :cond_0
    return-void
.end method

.method public handleConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleConnectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConnectivityManager;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1327
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->skipScan:Z

    if-eqz v0, :cond_0

    .line 1328
    return-void

    .line 1332
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1334
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleWifiConnected()V

    .line 1336
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleWifiConnected()V

    .line 1341
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1343
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 1344
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_0

    .line 1346
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1348
    :goto_0
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChanged: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1287
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 1289
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleScreenStateChanged(Z)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleScreenStateChanged(Z)V

    .line 1292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1293
    return-void
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1524
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 1526
    .local v0, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklistedLowSignal:Z

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public prepareForForcedConnection(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareForForcedConnection: netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearConnectionAttemptTimeStamps()V

    .line 1390
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    .line 1391
    return-void
.end method

.method public saveMiracastMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1300
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMiracastMode: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    .line 1302
    return-void
.end method

.method public setUntrustedConnectionAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUntrustedConnectionAllowed: allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1368
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 1369
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 1370
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1372
    :cond_0
    return-void
.end method

.method public setUserConnectChoice(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserConnectChoice: netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNetworkSelector;->setUserConnectChoice(I)Z

    .line 1381
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set WiFi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1688
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 1689
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateRunningState()V

    .line 1691
    return-void
.end method

.method public trackBssid(Ljava/lang/String;ZILandroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "reasonCode"    # I
    .param p4, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackBssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "enable "

    goto :goto_0

    :cond_0
    const-string v1, "disable "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1492
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1493
    return v0

    .line 1497
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiConnectivityManager;->updateBssidBlacklist(Ljava/lang/String;ZILandroid/net/wifi/ScanResult;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1503
    return v0

    .line 1507
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    .line 1509
    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 1513
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1516
    :cond_3
    return v0
.end method
