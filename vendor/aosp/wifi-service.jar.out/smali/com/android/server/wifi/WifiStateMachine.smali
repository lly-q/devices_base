.class public Lcom/android/server/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$FilsState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$RoamingState;,
        Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;,
        Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;,
        Lcom/android/server/wifi/WifiStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;,
        Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field static final CMD_ACCEPT_UNVALIDATED:I = 0x20099

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ADD_OR_UPDATE_PASSPOINT_CONFIG:I = 0x2006a

.field static final CMD_ASSOCIATED_BSSID:I = 0x20093

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CONFIG_ND_OFFLOAD:I = 0x200cc

.field static final CMD_CONNECT_NETWORK_DELAYED:I = 0x2015e

.field private static final CMD_DIAGS_CONNECT_TIMEOUT:I = 0x200fc

.field static final CMD_DISABLE_EPHEMERAL_NETWORK:I = 0x20062

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISABLE_P2P_WATCHDOG_TIMER:I = 0x20070

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_DISPLAY_PSENSOR_SCREEN_OFF:I = 0x2015f

.field public static final CMD_DPP_ADD_BOOTSTRAP_QRCODE:I = 0x2012e

.field public static final CMD_DPP_AUTH_INIT:I = 0x20135

.field public static final CMD_DPP_CONFIGURATOR_GET_KEY:I = 0x20136

.field public static final CMD_DPP_CONF_ADD:I = 0x20133

.field public static final CMD_DPP_CONF_REMOVE:I = 0x20134

.field public static final CMD_DPP_GENERATE_BOOTSTRAP:I = 0x2012d

.field public static final CMD_DPP_GET_URI:I = 0x20130

.field public static final CMD_DPP_LISTEN_START:I = 0x20131

.field public static final CMD_DPP_LISTEN_STOP:I = 0x20132

.field public static final CMD_DPP_REMOVE_BOOTSTRAP:I = 0x2012f

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER:I = 0x200a6

.field static final CMD_GET_ALL_MATCHING_CONFIGS:I = 0x200a8

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_GET_LINK_LAYER_STATS:I = 0x2003f

.field static final CMD_GET_MATCHING_CONFIG:I = 0x20063

.field static final CMD_GET_MATCHING_OSU_PROVIDERS:I = 0x2006d

.field static final CMD_GET_PASSPOINT_CONFIGS:I = 0x2006c

.field static final CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS:I = 0x2003e

.field static final CMD_GET_SUPPORTED_FEATURES:I = 0x2003d

.field static final CMD_INITIALIZE:I = 0x20087

.field static final CMD_INSTALL_PACKET_FILTER:I = 0x200ca

.field static final CMD_IPV4_PROVISIONING_FAILURE:I = 0x200c9

.field static final CMD_IPV4_PROVISIONING_SUCCESS:I = 0x200c8

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_IP_REACHABILITY_LOST:I = 0x20095

.field private static final CMD_IP_REACHABILITY_SESSION_END:I = 0x20137

.field static final CMD_MATCH_PROVIDER_NETWORK:I = 0x20069

.field static final CMD_NETWORK_STATUS:I = 0x20094

.field static final CMD_QUERY_OSU_ICON:I = 0x20068

.field static final CMD_READ_PACKET_FILTER:I = 0x200d0

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_APP_CONFIGURATIONS:I = 0x20061

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REMOVE_PASSPOINT_CONFIG:I = 0x2006b

.field static final CMD_REMOVE_USER_CONFIGURATIONS:I = 0x20098

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_ROAM_WATCHDOG_TIMER:I = 0x2005e

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_RSSI_THRESHOLD_BREACHED:I = 0x200a4

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x2005f

.field static final CMD_SET_FALLBACK_PACKET_FILTERING:I = 0x200cb

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_START_CONNECT:I = 0x2008f

.field static final CMD_START_IP_PACKET_OFFLOAD:I = 0x200a0

.field static final CMD_START_ROAM:I = 0x20091

.field static final CMD_START_RSSI_MONITORING_OFFLOAD:I = 0x200a2

.field private static final CMD_START_SUBSCRIPTION_PROVISIONING:I = 0x200fe

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_IP_PACKET_OFFLOAD:I = 0x200a1

.field static final CMD_STOP_RSSI_MONITORING_OFFLOAD:I = 0x200a3

.field static final CMD_TARGET_BSSID:I = 0x2008d

.field static final CMD_TEST_NETWORK_DISCONNECT:I = 0x20059

.field static final CMD_UNWANTED_NETWORK:I = 0x20090

.field static final CMD_UPDATE_LINKPROPERTIES:I = 0x2008c

.field static final CMD_USER_STOP:I = 0x200cf

.field static final CMD_USER_SWITCH:I = 0x200cd

.field static final CMD_USER_UNLOCK:I = 0x200ce

.field public static final CONNECT_MODE:I = 0x1

.field private static final DEFAULT_POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field private static final DIAGS_CONNECT_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DISABLED_MODE:I = 0x4

.field private static final DISABLE_DBS_FEATURE_OVERSEA:Z = true

.field static final DISABLE_P2P_GUARD_TIMER_MSEC:I = 0x7d0

.field private static final DISABLE_SAR:I = 0x5

.field static final DISCONNECTING_GUARD_TIMER_MSEC:I = 0x1388

.field private static final DOMAIN_CE:I = 0x3

.field private static final DOMAIN_FCC:I = 0x1

.field private static final DOMAIN_INDIA:I = 0x2

.field private static final EXTRA_OSU_ICON_QUERY_BSSID:Ljava/lang/String; = "BSSID"

.field private static final EXTRA_OSU_ICON_QUERY_FILENAME:Ljava/lang/String; = "FILENAME"

.field private static final EXTRA_OSU_PROVIDER:Ljava/lang/String; = "OsuProvider"

.field private static final FAILURE:I = -0x1

.field private static final GOOGLE_OUI:Ljava/lang/String; = "DA-A1-19"

.field private static final INVALID_DOMAIN_ID:I = -0x1

.field private static final INVALID_RPODUCT_ID:I = -0x1

.field private static final IWPRIV_CMD:Ljava/lang/String; = "iwpriv "

.field public static final LAST_SELECTED_NETWORK_EXPIRATION_AGE_MILLIS:I = 0x7530
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LINK_FLAPPING_DEBOUNCE_MSEC:I = 0xfa0

.field private static final LOGD_LEVEL_DEBUG:Ljava/lang/String; = "D"

.field private static final LOGD_LEVEL_VERBOSE:Ljava/lang/String; = "V"

.field private static final MAX_SSID_LENGTH:I = 0x22

.field private static final MESSAGE_HANDLING_STATUS_DEFERRED:I = -0x4

.field private static final MESSAGE_HANDLING_STATUS_DISCARD:I = -0x5

.field private static final MESSAGE_HANDLING_STATUS_FAIL:I = -0x2

.field private static final MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = -0x7

.field private static final MESSAGE_HANDLING_STATUS_LOOPED:I = -0x6

.field private static final MESSAGE_HANDLING_STATUS_OBSOLETE:I = -0x3

.field private static final MESSAGE_HANDLING_STATUS_OK:I = 0x1

.field private static final MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x2

.field private static final MESSAGE_HANDLING_STATUS_REFUSED:I = -0x1

.field private static final MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field private static final MYFTM_CMD:Ljava/lang/String; = "myftm "

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORKTYPE_UNTRUSTED:Ljava/lang/String; = "WIFI_UT"

.field private static final NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN:I = 0x2

.field private static final NETWORK_STATUS_UNWANTED_DISCONNECT:I = 0x0

.field private static final NETWORK_STATUS_UNWANTED_VALIDATION_FAILED:I = 0x1

.field public static final NUM_LOG_RECS_NORMAL:S = 0x64s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_VERBOSE:S = 0xbb8s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_VERBOSE_LOW_MEMORY:S = 0xc8s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ONEPLUS5T_ID:I = 0x1

.field private static final ONEPLUS5_ID:I = 0x0

.field private static final ONEPLUS6_ID:I = 0x2

.field private static final ONEPLUSEC101_ID:I = 0x4

.field private static final ONEPLUSP7819_ID:I = 0x3

.field private static final ONEPLUSP8801_ID:I = 0x5

.field private static final ONEPLUSP8811_ID:I = 0x6

.field private static final ONE_HOUR_MILLI:I = 0x36ee80

.field private static final OP_REASON6_MAX_RECONNECT_TIMES:I = 0x5

.field private static final OnePlus6TSingle_ID:I = 0x8

.field private static final OnePlus6T_ID:I = 0x7

.field static final ROAM_GUARD_TIMER_MSEC:I = 0x3a98

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field private static final SUCCESS:I = 0x1

.field public static final SUPPLICANT_BSSID_ANY:Ljava/lang/String; = "any"

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final SYSTEM_PROPERTY_LOG_CONTROL_WIFIHAL:Ljava/lang/String; = "log.tag.WifiHAL"

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final VENDOR_CMD:Ljava/lang/String; = "vendor_cmd_tool "

.field private static final WIFI_AUTO_CHANGE_TO_MOBILE_DATA:Ljava/lang/String; = "wifi_auto_change_to_mobile_data"

.field private static final WIFI_CALLING_WITH_NO_SIM:I = -0x2

.field public static final WIFI_WORK_SOURCE:Landroid/os/WorkSource;

.field private static final allowUcPart1:Ljava/lang/String; = "28:05:"

.field private static final allowUcPart3:Ljava/lang/String; = "000000000000080045000000000000000000000000000000"

.field private static final allowUcPart5:Ljava/lang/String; = "000000000000:fc0e0003c0"

.field private static final countryCodeChina:Ljava/lang/String; = "CN"

.field private static final countryCodeFcc:[Ljava/lang/String;

.field private static final countryCodeIndia:Ljava/lang/String; = "IN"

.field private static isSimCardPresent:Z

.field private static mDbsSupport:Z

.field private static mDomainId:I

.field private static mLteBand:I

.field private static mProductId:I

.field private static mSarControlNeed:Z

.field private static mSarIface:Ljava/lang/String;

.field private static mWoWPsControlNeed:Z

.field private static final productNeedSarControl:[Ljava/lang/String;

.field private static final productNeedWoWPsControl:[Ljava/lang/String;

.field private static final productSupportDBS:[Ljava/lang/String;

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static sScanAlarmIntentCount:I

.field private static final sSmToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowUcPart2:Ljava/lang/String;

.field private allowUcPart4:Ljava/lang/String;

.field private didBlackListBSSID:Z

.field disconnectingWatchdogCount:I

.field private lastConnectAttemptTimestamp:J

.field private lastLinkLayerStatsUpdate:J

.field private lastOntimeReportTimeStamp:J

.field private lastPatternCommand:Ljava/lang/String;

.field private lastScanFreqs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastScreenStateChangeTimeStamp:J

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectionReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private mDataInterfaceName:Ljava/lang/String;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDiagsConnectionStartMillis:J

.field mDisableP2pWatchdogCount:I

.field private mDisabledConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectOnlyOnInitialIpReachability:Z

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectedTimeStamp:J

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverRoaming:Z

.field private mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEnableRssiPolling:Z

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFilsConfig:Landroid/net/wifi/WifiConfiguration;

.field private mFilsState:Lcom/android/internal/util/State;

.field private mHandler:Landroid/os/Handler;

.field private mInterfaceName:Ljava/lang/String;

.field private mIpClient:Landroid/net/ip/IpClient;

.field private mIpReachabilityDisconnectEnabled:Z

.field private mIpReachabilityMonitorActive:Z

.field private mIsAutoRoaming:Z

.field private mIsFilsConnection:Z

.field private mIsIpClientStarted:Z

.field private mIsRunning:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverRoamAttempt:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mMcastLockManagerFilterController:Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

.field private mModeChange:Z

.field private mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkMisc:Landroid/net/NetworkMisc;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOnTime:I

.field private mOnTimeLastReport:I

.field private mOnTimeScreenStateChange:I

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPSensorPositive:Z

.field private final mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private mPeriodicScanToken:I

.field private volatile mPollRssiIntervalMsecs:I

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRoamFailCount:I

.field private mRoamingState:Lcom/android/internal/util/State;

.field private mRssiPollToken:I

.field private mRssiRanges:[B

.field mRunningBeaconCount:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mRxTime:I

.field private mRxTimeLastReport:I

.field private mSarEnabled:Z

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field private mScreenOn:Z

.field private mStaAndAPConcurrency:Z

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSystemConnectionRequest:Z

.field private mTargetNetworkId:I

.field private mTargetRoamBSSID:Ljava/lang/String;

.field private final mTcpBufferSizes:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemporarilyDisconnectWifi:Z

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mTxTime:I

.field private mTxTimeLastReport:I

.field private mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

.field private mUntrustedReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingEnabled:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

.field private mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

.field private final mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private final mWifiReqCountLock:Ljava/lang/Object;

.field private final mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

.field private final mWrongPasswordNotifier:Lcom/android/server/wifi/WrongPasswordNotifier;

.field private messageHandlingStatus:I

.field roamWatchdogCount:I

.field private targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

.field private testNetworkDisconnect:Z

.field private testNetworkDisconnectCounter:I

.field private wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 251
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    .line 252
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    .line 253
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->mDomainId:I

    .line 254
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mDbsSupport:Z

    .line 256
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mSarControlNeed:Z

    .line 257
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mWoWPsControlNeed:Z

    .line 258
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->isSimCardPresent:Z

    .line 280
    const-string v1, "US"

    const-string v2, "CA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    .line 284
    const-string v1, "OnePlus5"

    const-string v2, "OnePlus5T"

    const-string v3, "OnePlus6"

    const-string v4, "P7819"

    const-string v5, "EC101"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->productSupportDBS:[Ljava/lang/String;

    .line 291
    const-string v2, "OnePlus5"

    const-string v3, "OnePlus5T"

    const-string v4, "OnePlus6"

    const-string v5, "P7819"

    const-string v6, "EC101"

    const-string v7, "P8801"

    const-string v8, "P8811"

    const-string v9, "OnePlus6T"

    const-string v10, "OnePlus6TSingle"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->productNeedSarControl:[Ljava/lang/String;

    .line 302
    const-string v1, "OnePlus3"

    const-string v2, "OnePlus3T"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->productNeedWoWPsControl:[Ljava/lang/String;

    .line 791
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/android/internal/util/AsyncChannel;

    aput-object v2, v1, v0

    const-class v2, Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/net/dhcp/DhcpClient;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    .line 793
    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    .line 794
    invoke-static {v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    .line 878
    new-instance v1, Landroid/os/WorkSource;

    const/16 v2, 0x3f2

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    .line 913
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WrongPasswordNotifier;Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/WifiNetworkSelector;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "userManager"    # Landroid/os/UserManager;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p6, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p7, "countryCode"    # Lcom/android/server/wifi/WifiCountryCode;
    .param p8, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p9, "wrongPasswordNotifier"    # Lcom/android/server/wifi/WrongPasswordNotifier;
    .param p10, "sarManager"    # Lcom/android/server/wifi/SarManager;
    .param p11, "wifiNetworkSelector"    # Lcom/android/server/wifi/WifiNetworkSelector;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 938
    const-string v2, "WifiStateMachine"

    move-object/from16 v3, p3

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    .line 189
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    .line 221
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 237
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 243
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 249
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    .line 250
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPSensorPositive:Z

    .line 308
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    .line 309
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 312
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    .line 313
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverRoaming:Z

    .line 316
    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOnlyOnInitialIpReachability:Z

    .line 317
    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitorActive:Z

    .line 345
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    .line 351
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    .line 353
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 355
    const/16 v7, 0xbb8

    iput v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    .line 356
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 362
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    .line 365
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mModeChange:Z

    .line 367
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 369
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 416
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 423
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 434
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    .line 437
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    .line 441
    const-string v8, "any"

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 445
    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    .line 446
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    .line 447
    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 508
    new-instance v10, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v10}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 513
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    .line 516
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    .line 520
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    .line 525
    new-instance v10, Landroid/net/NetworkCapabilities;

    invoke-direct {v10}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 528
    new-instance v10, Landroid/net/NetworkMisc;

    invoke-direct {v10}, Landroid/net/NetworkMisc;-><init>()V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    .line 585
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    .line 596
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 639
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    .line 645
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisableP2pWatchdogCount:I

    .line 815
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 830
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 833
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 842
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 845
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 847
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 849
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 851
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 853
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 855
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$RoamingState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    .line 857
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 859
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 861
    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$FilsState;

    invoke-direct {v10, v0}, Lcom/android/server/wifi/WifiStateMachine$FilsState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    .line 862
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFilsConnection:Z

    .line 863
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    .line 873
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 883
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 888
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 893
    new-instance v10, Landroid/os/WorkSource;

    invoke-direct {v10}, Landroid/os/WorkSource;-><init>()V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 898
    new-instance v10, Landroid/os/WorkSource;

    invoke-direct {v10}, Landroid/os/WorkSource;-><init>()V

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 921
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSystemConnectionRequest:Z

    .line 1450
    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    .line 1463
    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    .line 1464
    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    .line 1479
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1493
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1494
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1495
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1497
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 1498
    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1499
    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 1500
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1501
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1502
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1504
    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 3235
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 6703
    new-instance v8, Lcom/android/server/wifi/WifiStateMachine$7;

    invoke-direct {v8, v0}, Lcom/android/server/wifi/WifiStateMachine$7;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandler:Landroid/os/Handler;

    .line 6741
    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    .line 6743
    const-string v8, ""

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart2:Ljava/lang/String;

    .line 6745
    const-string v8, ""

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart4:Ljava/lang/String;

    .line 939
    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 940
    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 941
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    .line 942
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getPropertyService()Lcom/android/server/wifi/PropertyService;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 943
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getBuildProperties()Lcom/android/server/wifi/BuildProperties;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 945
    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 946
    move-object/from16 v9, p11

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 948
    iput-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 949
    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 950
    move-object/from16 v11, p8

    iput-object v11, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 951
    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 952
    move-object/from16 v13, p9

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWrongPasswordNotifier:Lcom/android/server/wifi/WrongPasswordNotifier;

    .line 953
    move-object/from16 v14, p10

    iput-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mSarManager:Lcom/android/server/wifi/SarManager;

    .line 956
    new-instance v15, Landroid/net/NetworkInfo;

    const-string v6, "WIFI"

    const-string v4, ""

    invoke-direct {v15, v5, v2, v6, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 957
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v6, "batterystats"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 959
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getWifiStateTracker()Lcom/android/server/wifi/WifiStateTracker;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    .line 960
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v6, "network_management"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 962
    .local v4, "b":Landroid/os/IBinder;
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v15, "android.hardware.wifi.direct"

    invoke-virtual {v6, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 965
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 966
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiConfigManager()Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 968
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getPasspointManager()Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 970
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 971
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiDiagnostics()Lcom/android/server/wifi/BaseWifiDiagnostics;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 972
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getScanRequestProxy()Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 973
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 975
    new-instance v6, Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-direct {v6}, Lcom/android/server/wifi/ExtendedWifiInfo;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    .line 976
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v6, v1, v15, v5}, Lcom/android/server/wifi/FrameworkFacade;->makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 979
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 980
    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mMcastLockManagerFilterController:Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

    .line 982
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 983
    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 984
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 985
    iput v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 987
    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 989
    new-instance v6, Lcom/android/server/wifi/WifiScoreReport;

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiInjector;->getScoringParams()Lcom/android/server/wifi/ScoringParams;

    move-result-object v7

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v6, v7, v15}, Lcom/android/server/wifi/WifiScoreReport;-><init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    .line 991
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 992
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 993
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 994
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 995
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 996
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 997
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 998
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 1000
    new-instance v6, Landroid/net/NetworkCapabilities;

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v6, v7}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1002
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1003
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/android/server/wifi/WifiStateMachine$1;

    invoke-direct {v15, v0}, Lcom/android/server/wifi/WifiStateMachine$1;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v7, v15, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1019
    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "wifi_suspend_optimizations_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$2;

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/server/wifi/WifiStateMachine$2;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 1019
    const/4 v3, 0x0

    invoke-virtual {v7, v15, v2, v3, v1}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1029
    iget-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "wifi_connected_mac_randomization_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v15, Lcom/android/server/wifi/WifiStateMachine$3;

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v15, v0, v3}, Lcom/android/server/wifi/WifiStateMachine$3;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 1029
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3, v15}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1040
    iget-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$4;

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v0, v15}, Lcom/android/server/wifi/WifiStateMachine$4;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1059
    iget-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sar_notify_band"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$5;

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v0, v15}, Lcom/android/server/wifi/WifiStateMachine$5;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1072
    iget-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    const-string v2, "ro.product.name"

    const-string v3, "unknown"

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/PropertyService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "productName":Ljava/lang/String;
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->initOemParams(Ljava/lang/String;)V

    .line 1077
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$6;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$6;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v7, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1086
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "wifi_suspend_optimizations_enabled"

    move-object/from16 v16, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v7, v15, v1}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .end local v1    # "productName":Ljava/lang/String;
    .local v16, "productName":Ljava/lang/String;
    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1089
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->updateConnectedMacRandomizationSetting()V

    .line 1091
    iget-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1092
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1094
    const-string v2, "WifiSuspend"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1095
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1097
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 1100
    const-string v2, "persist.vendor.wifi.enableIpReachabilityMonitorPeriod"

    const-string v3, "1"

    .line 1101
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    .line 1102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOnlyOnInitialIpReachability:Z

    .line 1105
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1106
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1107
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1108
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1109
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1110
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1111
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1112
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1113
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1116
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1118
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1119
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->start()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    .line 1127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    return v0
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOnlyOnInitialIpReachability:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpReachabilityLost()V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/wifi/WifiStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    return v0
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/wifi/WifiStateMachine;BILcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->processRssiThreshold(BILcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpClient()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$12208(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return v0
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    return v0
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic access$12408(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide v0
.end method

.method static synthetic access$12502(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .line 167
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide p1
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/Map;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$12902(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .line 167
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTargetSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic access$1804(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic access$1806(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic access$2004(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic access$2006(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Lcom/android/internal/util/State;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->deleteNetworkConfigAndSendReply(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateConnectedMacRandomizationSetting()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/hotspot2/PasspointManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getAdditionalWifiServiceInterfaces()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->saveNetworkConfigAndSendReply(Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 167
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mSarControlNeed:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkSelector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 167
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiDiagnostics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 167
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->mDomainId:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setupClientMode()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ScanRequestProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopClientMode()V

    return-void
.end method

.method static synthetic access$5702(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPSensorPositive:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiStateMachine;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->isPermanentWrongPasswordFailure(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPSensorPositive:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WrongPasswordNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWrongPasswordNotifier:Lcom/android/server/wifi/WrongPasswordNotifier;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleEapAuthFailure(II)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiScoreReport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/WifiStateMachine;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->connectToUserSelectNetwork(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendOemMessage()V

    return-void
.end method

.method static synthetic access$7002(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .line 167
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFilsConnection:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFilsConnection:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->configureRandomizedMacAddress(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->removeOemMessage()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptStart(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/WifiConfiguration;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitorActive:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitorActive:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableSarExt(Z)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Z)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->isProviderOwnedNetwork(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiDppConfig$DppResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/WifiDppConfig$DppResult;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendDppEventBroadcast(ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    return-void
.end method

.method static synthetic access$9402(Lcom/android/server/wifi/WifiStateMachine;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # [B

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    return-object p1
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$9508(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkMisc;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method private addWoWPattern(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 6793
    const/4 v0, 0x0

    .line 6794
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wowlAddPtrn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6795
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "iwpriv "

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6796
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WoW Oem Command iwpriv "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6797
    return v0
.end method

.method private broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 6400
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6402
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6403
    const-string v1, "et"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6405
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6408
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    .line 5231
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5234
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x6

    if-ne p1, v0, :cond_1

    .line 5235
    const-string v0, "1"

    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 5236
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 5237
    const-string v0, "0"

    goto :goto_0

    .line 5238
    :cond_2
    if-ne p1, v1, :cond_5

    .line 5239
    const-string v0, "6"

    goto :goto_0

    .line 5241
    .restart local v0    # "prefix":Ljava/lang/String;
    :goto_1
    nop

    .line 5244
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5245
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5246
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5247
    .local v2, "mnc":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 5248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 5251
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5252
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 5255
    .restart local v1    # "mcc":Ljava/lang/String;
    .local v2, "mnc":Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@wlan.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5241
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    return-object v0

    .line 5232
    :cond_6
    :goto_3
    const-string v0, ""

    return-object v0
.end method

.method private checkAndSetAudioInstance()V
    .locals 2

    .line 6726
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 6727
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 6728
    :cond_0
    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .line 2720
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 2723
    :cond_0
    return-void
.end method

.method private checkOrDeferScanAllowed(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1484
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 1485
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1486
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1487
    .local v2, "dmsg":Landroid/os/Message;
    const-wide/16 v3, 0x2af8

    iget-wide v5, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v5, v0, v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1488
    const/4 v3, 0x0

    return v3

    .line 1490
    .end local v2    # "dmsg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private cleanWifiScore()V
    .locals 3

    .line 2831
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    .line 2832
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    .line 2833
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    .line 2834
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    .line 2835
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScoreReport;->reset()V

    .line 2836
    return-void
.end method

.method private clearLinkProperties()V
    .locals 2

    .line 2874
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2875
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v1, :cond_0

    .line 2876
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1}, Landroid/net/DhcpResults;->clear()V

    .line 2878
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 2882
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2883
    :cond_1
    return-void

    .line 2878
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private clearWoWPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 6809
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6810
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->removeWoWPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    .line 6813
    :cond_0
    return-void
.end method

.method private configWoWPattern(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "connected"    # Z
    .param p4, "ipv4"    # Z

    .line 6816
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WoW connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ipv4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    if-eqz p3, :cond_2

    .line 6818
    if-eqz p4, :cond_3

    .line 6819
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->clearWoWPattern(Ljava/lang/String;)V

    .line 6820
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->splitMacToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart2:Ljava/lang/String;

    .line 6821
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->splitIPv4ToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart4:Ljava/lang/String;

    .line 6822
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart2:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart4:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6826
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "28:05:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000000000000080045000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->allowUcPart4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000000000000:fc0e0003c0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    .line 6827
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->addWoWPattern(Ljava/lang/String;)Z

    goto :goto_1

    .line 6823
    :cond_1
    :goto_0
    const-string v0, "WifiStateMachine"

    const-string v1, "Mac address or IPv4 address no right"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    return-void

    .line 6830
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->clearWoWPattern(Ljava/lang/String;)V

    .line 6832
    :cond_3
    :goto_1
    return-void
.end method

.method private configureRandomizedMacAddress(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3583
    if-nez p1, :cond_0

    .line 3584
    const-string v0, "WifiStateMachine"

    const-string v1, "No config to change MAC address to"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    return-void

    .line 3587
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 3588
    .local v0, "currentMac":Landroid/net/MacAddress;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getOrCreateRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 3589
    .local v1, "newMac":Landroid/net/MacAddress;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkRandomizedMacAddress(ILandroid/net/MacAddress;)Z

    .line 3591
    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration;->isValidMacAddressForRandomization(Landroid/net/MacAddress;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3592
    const-string v2, "WifiStateMachine"

    const-string v3, "Config generated an invalid MAC address"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3593
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3594
    const-string v2, "WifiStateMachine"

    const-string v3, "No changes in MAC address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3596
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(ILandroid/net/wifi/WifiConfiguration;)V

    .line 3597
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 3598
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiNative;->setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v2

    .line 3599
    .local v2, "setMacSuccess":Z
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectedMacRandomization SSID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "). setMacAddress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3600
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3601
    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3599
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    .end local v2    # "setMacSuccess":Z
    :goto_0
    return-void
.end method

.method private configureVerboseHalLogging(Z)V
    .locals 3
    .param p1, "enableVerbose"    # Z

    .line 1337
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-interface {v0}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    const-string v1, "log.tag.WifiHAL"

    .line 1341
    if-eqz p1, :cond_1

    const-string v2, "V"

    goto :goto_0

    :cond_1
    const-string v2, "D"

    .line 1340
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/PropertyService;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method private connectToUserSelectNetwork(IIZ)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "uid"    # I
    .param p3, "forceReconnect"    # Z

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectToUserSelectNetwork netId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceReconnect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToUserSelectNetwork Invalid network Id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1410
    return v1

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1413
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->setUserConnectChoice(I)V

    goto :goto_1

    .line 1414
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToUserSelectNetwork Allowing uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with insufficient permissions to connect="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    .line 1422
    :cond_3
    :goto_1
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_4

    .line 1423
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSystemConnectionRequest:Z

    goto :goto_2

    .line 1426
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSystemConnectionRequest:Z

    .line 1429
    :goto_2
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->getNetworkId()I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectToUserSelectNetwork already connecting/connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 1434
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->prepareForForcedConnection(I)V

    .line 1435
    const-string v0, "any"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiStateMachine;->startConnectToNetwork(IILjava/lang/String;)V

    .line 1437
    :goto_3
    return v2
.end method

.method private currentUseNetworkType()I
    .locals 6

    .line 6977
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 6978
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 6979
    return v1

    .line 6981
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 6982
    .local v0, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 6984
    .local v3, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6985
    return v2

    .line 6986
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6987
    return v4

    .line 6989
    :cond_2
    return v1
.end method

.method private deleteNetworkConfigAndSendReply(Landroid/os/Message;Z)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "calledFromForget"    # Z

    .line 6525
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v0

    .line 6526
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 6527
    const-string v1, "Failed to remove network"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6530
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 6531
    if-eqz v0, :cond_1

    .line 6532
    const v1, 0x25006

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 6533
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    .line 6535
    return v2

    .line 6537
    :cond_1
    const v2, 0x25005

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6538
    return v1

    .line 6541
    :cond_2
    if-eqz v0, :cond_3

    .line 6542
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6543
    return v2

    .line 6545
    :cond_3
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6546
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6547
    return v1
.end method

.method private doDBSControl()V
    .locals 3

    .line 6921
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mDbsSupport:Z

    if-eqz v0, :cond_0

    .line 6924
    invoke-direct {p0, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->runDbsOemCommand(II)Z

    .line 6926
    :cond_0
    return-void
.end method

.method private doWoWPsControl(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .line 6929
    const/4 v0, 0x0

    .line 6930
    .local v0, "macAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6931
    .local v1, "ipv4Address":Ljava/lang/String;
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 6932
    .local v2, "ipv6Addresses":Ljava/util/StringJoiner;
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->mWoWPsControlNeed:Z

    if-nez v3, :cond_0

    .line 6933
    return-void

    .line 6935
    :cond_0
    if-eqz p1, :cond_4

    .line 6936
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v3, :cond_4

    .line 6937
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 6938
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 6939
    .local v4, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 6940
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6941
    :cond_1
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2

    .line 6942
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 6944
    .end local v4    # "addr":Landroid/net/LinkAddress;
    :cond_2
    :goto_1
    goto :goto_0

    .line 6945
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi mac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipv4Address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipv6Addresses = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6949
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->configWoWPattern(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 6950
    return-void
.end method

.method private enableSarExt(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .line 7070
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getPersistedAirplaneModeOn()Z

    move-result v0

    .line 7071
    .local v0, "isAirPlanMode":Z
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sar enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " airplanmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSimCardPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->isSimCardPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7075
    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7076
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    .line 7077
    return-void

    .line 7080
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetAudioInstance()V

    .line 7081
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    .line 7082
    return-void

    .line 7083
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 7085
    .local v1, "mode":I
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    .line 7159
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sar control not support product id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7117
    :pswitch_0
    const/4 v3, -0x1

    if-eqz p1, :cond_8

    .line 7118
    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_e

    .line 7120
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->currentUseNetworkType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7121
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->currentUseNetworkType()I

    move-result v2

    if-ne v2, v7, :cond_e

    .line 7122
    :cond_2
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modem/wifi calling product id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7123
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mPSensorPositive:Z

    if-eqz v2, :cond_e

    .line 7125
    if-nez v0, :cond_7

    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->isSimCardPresent:Z

    if-nez v2, :cond_3

    goto :goto_0

    .line 7130
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_sar_notify_band"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 7133
    .local v2, "curLteBand":I
    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    if-eq v4, v3, :cond_4

    if-eq v2, v3, :cond_4

    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    if-eq v2, v3, :cond_4

    .line 7134
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLteBand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curLteBand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->runSarVendorCommand(ILjava/lang/String;)Z

    .line 7138
    :cond_4
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    if-ne v2, v3, :cond_5

    .line 7139
    return-void

    .line 7140
    :cond_5
    sput v2, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    .line 7141
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLteBand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7142
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mDomainId:I

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    sget v6, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7143
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    .line 7145
    .end local v2    # "curLteBand":I
    :cond_6
    goto/16 :goto_2

    .line 7126
    :cond_7
    :goto_0
    sget v2, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mDomainId:I

    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 7127
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    goto/16 :goto_2

    .line 7149
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    if-eqz v4, :cond_e

    .line 7150
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable sar "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7151
    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 7152
    sput v3, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    .line 7153
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    goto/16 :goto_2

    .line 7091
    :pswitch_1
    if-eqz p1, :cond_d

    .line 7092
    if-nez v0, :cond_c

    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->isSimCardPresent:Z

    if-nez v2, :cond_9

    goto :goto_1

    .line 7094
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    if-nez v2, :cond_a

    if-eq v1, v5, :cond_b

    :cond_a
    if-ne v1, v4, :cond_e

    .line 7097
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->currentUseNetworkType()I

    move-result v2

    if-eqz v2, :cond_b

    .line 7098
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->currentUseNetworkType()I

    move-result v2

    if-ne v2, v7, :cond_e

    .line 7099
    :cond_b
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modem/wifi calling product id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7100
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mPSensorPositive:Z

    if-eqz v2, :cond_e

    .line 7101
    sget v2, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mDomainId:I

    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    sget v5, Lcom/android/server/wifi/WifiStateMachine;->mLteBand:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 7102
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    goto :goto_2

    .line 7093
    :cond_c
    :goto_1
    return-void

    .line 7106
    :cond_d
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    if-eqz v3, :cond_e

    .line 7107
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disable sar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7108
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7109
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarEnabled:Z

    .line 7162
    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fetchRssiLinkSpeedAndFrequencyNative()V
    .locals 7

    .line 2769
    const/4 v0, 0x0

    .line 2770
    .local v0, "newRssi":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 2771
    .local v1, "newLinkSpeed":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 2772
    .local v2, "newFrequency":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;

    move-result-object v3

    .line 2773
    .local v3, "pollResult":Lcom/android/server/wifi/WifiNative$SignalPollResult;
    if-nez v3, :cond_0

    .line 2774
    return-void

    .line 2777
    :cond_0
    iget v4, v3, Lcom/android/server/wifi/WifiNative$SignalPollResult;->currentRssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2778
    iget v4, v3, Lcom/android/server/wifi/WifiNative$SignalPollResult;->txBitrate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2779
    iget v4, v3, Lcom/android/server/wifi/WifiNative$SignalPollResult;->associationFrequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2781
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 2782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchRssiLinkSpeedAndFrequencyNative rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " linkspeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " freq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2786
    :cond_1
    const/16 v4, -0x7f

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xc8

    if-ge v5, v6, :cond_4

    .line 2791
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit16 v4, v4, -0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2792
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->setRssi(I)V

    .line 2803
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    .line 2804
    .local v4, "newSignalLevel":I
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v4, v5, :cond_3

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 2806
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 2808
    :cond_3
    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2809
    .end local v4    # "newSignalLevel":I
    goto :goto_0

    .line 2810
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setRssi(I)V

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 2814
    :goto_0
    if-eqz v1, :cond_5

    .line 2815
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->setLinkSpeed(I)V

    .line 2817
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    .line 2818
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->setFrequency(I)V

    .line 2820
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->updateScanDetailCacheFromWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 2824
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 2825
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiMetrics;->handlePollResult(Landroid/net/wifi/WifiInfo;)V

    .line 2827
    :cond_7
    return-void
.end method

.method private getAdditionalWifiServiceInterfaces()V
    .locals 5

    .line 3563
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3565
    .local v0, "s1":Landroid/os/IBinder;
    nop

    .line 3566
    invoke-static {v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 3568
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    if-eqz v1, :cond_0

    .line 3569
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3570
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 3571
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 3570
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 3574
    .end local v0    # "s1":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method private getClientInterfaceName()Ljava/lang/String;
    .locals 1

    .line 6969
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDomainId()I
    .locals 4

    .line 7010
    const/4 v0, 0x0

    .line 7011
    .local v0, "i":I
    const/4 v1, -0x1

    .line 7012
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 7013
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_5

    .line 7016
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 7048
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 7049
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7050
    const/4 v1, 0x1

    .line 7051
    goto :goto_4

    .line 7048
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7026
    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 7027
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7028
    const/4 v1, 0x1

    .line 7029
    goto :goto_2

    .line 7026
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7033
    :cond_3
    :goto_2
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    .line 7034
    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7035
    const/4 v1, 0x2

    goto :goto_4

    .line 7037
    :cond_4
    const/4 v1, 0x3

    goto :goto_4

    .line 7018
    :pswitch_2
    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 7019
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->countryCodeFcc:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7020
    const/4 v1, 0x1

    .line 7021
    goto :goto_4

    .line 7018
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7066
    :cond_6
    :goto_4
    return v1

    .line 7014
    :cond_7
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDstMacForKeepalive(Landroid/net/KeepalivePacketData;)[B
    .locals 3
    .param p1, "packetData"    # Landroid/net/KeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    .line 1550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1551
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 1550
    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1551
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 1552
    .local v0, "gateway":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "dstMacStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1554
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v1    # "dstMacStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v2, -0x15

    invoke-direct {v1, v2}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v1
.end method

.method private static getEtherProtoForKeepalive(Landroid/net/KeepalivePacketData;)I
    .locals 2
    .param p0, "packetData"    # Landroid/net/KeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 1563
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    return v0

    .line 1564
    :cond_0
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 1565
    sget v0, Landroid/system/OsConstants;->ETH_P_IPV6:I

    return v0

    .line 1567
    :cond_1
    new-instance v0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0
.end method

.method private static getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .line 6594
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6595
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6596
    const-string v1, "v4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6598
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6599
    const-string v1, "v4r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6601
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6602
    const-string v1, "v4dns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6604
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6605
    const-string v1, "v6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6607
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6608
    const-string v1, "v6r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6610
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6611
    const-string v1, "v6dns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6614
    :cond_5
    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 3026
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 3

    .line 7005
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 3

    .line 6999
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private getSoftApInterfaceName()Ljava/lang/String;
    .locals 1

    .line 6973
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSoftApInterfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTargetSsid()Ljava/lang/String;
    .locals 2

    .line 6622
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6623
    .local v0, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 6624
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v1

    .line 6626
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleEapAuthFailure(II)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "errorCode"    # I

    .line 5092
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    .line 5093
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5094
    .local v0, "targetedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 5095
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5099
    :pswitch_0
    const/16 v1, 0x4001

    if-ne p2, v1, :cond_0

    .line 5100
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->resetCarrierKeysForImsiEncryption()V

    .line 5107
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleIPv4Failure()V
    .locals 4

    .line 3337
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->captureBugReportData(I)V

    .line 3338
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 3339
    const/4 v0, -0x1

    .line 3340
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3341
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    .line 3342
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0

    .line 3345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP failure count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3347
    .end local v0    # "count":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/16 v0, 0xa

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    .line 3350
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v1, :cond_2

    .line 3352
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1}, Landroid/net/DhcpResults;->clear()V

    .line 3354
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3355
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_3

    .line 3356
    const-string v0, "handleIPv4Failure"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3358
    :cond_3
    return-void

    .line 3354
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 3286
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIPv4Success <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3293
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 3294
    iget-object v1, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 3295
    .local v1, "addr":Ljava/net/Inet4Address;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    if-eqz v0, :cond_1

    .line 3298
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->getIpAddress()I

    move-result v0

    .line 3299
    .local v0, "previousAddress":I
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    .line 3300
    .local v2, "newAddress":I
    if-eq v0, v2, :cond_1

    .line 3301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIPv4Success, roaming and address changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3306
    .end local v0    # "previousAddress":I
    .end local v2    # "newAddress":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3309
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 3310
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setEphemeral(Z)V

    .line 3314
    :cond_2
    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3315
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3318
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3319
    return-void

    .line 3295
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "addr":Ljava/net/Inet4Address;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleIpConfigurationLost()V
    .locals 3

    .line 3361
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3362
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3364
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 3370
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->disconnect(Ljava/lang/String;)Z

    .line 3371
    return-void
.end method

.method private handleIpReachabilityLost()V
    .locals 2

    .line 3375
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3376
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3381
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->disconnect(Ljava/lang/String;)Z

    .line 3382
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 1

    .line 3092
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Z)V

    .line 3093
    return-void
.end method

.method private handleNetworkDisconnect(Z)V
    .locals 3
    .param p1, "connectionInProgress"    # Z

    .line 3096
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkDisconnect: Stopping DHCP and clearing IP stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3097
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3104
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    .line 3106
    const-string v0, "handleNetworkDisconnect"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->clearTargetBssid(Ljava/lang/String;)Z

    .line 3108
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_2

    .line 3109
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpClient()V

    .line 3112
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScoreReport;->reset()V

    .line 3113
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->reset()V

    .line 3115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    .line 3117
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 3120
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->doWoWPsControl(Z)V

    .line 3123
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3124
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 3125
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 3129
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 3132
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 3134
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 3135
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerDisconnected()V

    .line 3136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 3137
    return-void
.end method

.method private handleScreenStateChanged(Z)V
    .locals 6
    .param p1, "screenOn"    # Z

    .line 2674
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 2675
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleScreenStateChanged Enter: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUserWantsSuspendOpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " suppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 2679
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2676
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2681
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 2682
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2683
    const/4 v0, 0x0

    .line 2684
    .local v0, "shouldReleaseWakeLock":I
    const v2, 0x20056

    if-eqz p1, :cond_1

    .line 2685
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    goto :goto_0

    .line 2687
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2689
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2690
    const/4 v0, 0x1

    .line 2692
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2696
    .end local v0    # "shouldReleaseWakeLock":I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats()Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 2697
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 2698
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 2700
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->setScreenState(Z)V

    .line 2702
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_4

    .line 2703
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    .line 2706
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2707
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2708
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_5

    .line 2709
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    .line 2711
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    goto :goto_1

    .line 2712
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabledConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2713
    const-string v0, "WifiStateMachine"

    const-string v1, "clear all reason 6 disable network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChanged Exit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2717
    :cond_8
    return-void
.end method

.method private handleSuccessfulIpConfiguration()V
    .locals 3

    .line 3322
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3324
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 3326
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter(I)V

    .line 3330
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3332
    :cond_0
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 3030
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 3031
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 3036
    .local v1, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 3038
    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3039
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget v3, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setNetworkId(I)V

    .line 3040
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 3041
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    goto :goto_0

    .line 3044
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setNetworkId(I)V

    .line 3045
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 3046
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 3049
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 3051
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3052
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 3053
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setEphemeral(Z)V

    .line 3056
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v3

    .line 3058
    .local v3, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v3, :cond_1

    .line 3059
    iget-object v4, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v4

    .line 3060
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v4, :cond_1

    .line 3061
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ExtendedWifiInfo;->setFrequency(I)V

    .line 3062
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v5

    .line 3063
    .local v5, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v5, :cond_1

    .line 3064
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-ne v6, v7, :cond_1

    .line 3065
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3071
    .end local v3    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v5    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 3072
    return-object v1
.end method

.method private hasConnectionRequests()Z
    .locals 1

    .line 6660
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private initOemParams(Ljava/lang/String;)V
    .locals 1
    .param p1, "productName"    # Ljava/lang/String;

    .line 6908
    if-eqz p1, :cond_0

    .line 6909
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->isDbsSupport(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mDbsSupport:Z

    .line 6910
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->isNeedSarControl(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mSarControlNeed:Z

    .line 6911
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->isNeedWoWPsControl(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mWoWPsControlNeed:Z

    goto :goto_0

    .line 6913
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mDbsSupport:Z

    .line 6914
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mSarControlNeed:Z

    .line 6915
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mWoWPsControlNeed:Z

    .line 6916
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    .line 6918
    :goto_0
    return-void
.end method

.method private isDbsSupport(Ljava/lang/String;)Z
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .line 6871
    const/4 v0, 0x0

    .line 6872
    .local v0, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->productSupportDBS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 6873
    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->productSupportDBS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6874
    const/4 v0, 0x1

    .line 6875
    goto :goto_1

    .line 6872
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6878
    :cond_1
    :goto_1
    return v0
.end method

.method private isNeedSarControl(Ljava/lang/String;)Z
    .locals 5
    .param p1, "productName"    # Ljava/lang/String;

    .line 6895
    const/4 v0, 0x0

    .line 6896
    .local v0, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->productNeedSarControl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 6897
    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->productNeedSarControl:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6898
    sput v1, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    .line 6899
    const/4 v0, 0x1

    .line 6900
    goto :goto_1

    .line 6896
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6903
    :cond_1
    :goto_1
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedSarControl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6904
    return v0
.end method

.method private isNeedWoWPsControl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .line 6883
    const/4 v0, 0x0

    .line 6884
    .local v0, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->productNeedWoWPsControl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 6885
    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->productNeedWoWPsControl:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6886
    const/4 v0, 0x1

    .line 6887
    goto :goto_1

    .line 6884
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6890
    :cond_1
    :goto_1
    return v0
.end method

.method private isPermanentWrongPasswordFailure(II)Z
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "reasonCode"    # I

    .line 3447
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 3448
    return v0

    .line 3450
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3451
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3452
    return v0

    .line 3454
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isProviderOwnedNetwork(ILjava/lang/String;)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "providerFqdn"    # Ljava/lang/String;

    .line 5081
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 5082
    return v0

    .line 5084
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5085
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_1

    .line 5086
    return v0

    .line 5088
    :cond_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .line 2236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 2237
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2240
    :cond_0
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 3389
    const/4 v0, 0x0

    .line 3390
    .local v0, "macAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3392
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 3395
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 3397
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2

    .line 3398
    const-string v3, "[ ]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3399
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 3400
    goto :goto_0

    .line 3405
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 3406
    .local v4, "ip":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v3, v5

    .line 3408
    .local v5, "mac":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3409
    move-object v0, v5

    .line 3410
    goto :goto_1

    .line 3412
    .end local v3    # "tokens":[Ljava/lang/String;
    .end local v4    # "ip":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3414
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 3415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find remoteAddress {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "} in /proc/net/arp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3425
    .end local v2    # "line":Ljava/lang/String;
    :cond_3
    nop

    .line 3426
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3428
    :catch_0
    move-exception v2

    .line 3431
    goto :goto_3

    .line 3430
    :cond_4
    :goto_2
    goto :goto_3

    .line 3424
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 3421
    :catch_1
    move-exception v2

    .line 3422
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "Could not read /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3425
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 3426
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3419
    :catch_2
    move-exception v2

    .line 3420
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v3, "Could not open /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3425
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_4

    .line 3426
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 3432
    :goto_3
    return-object v0

    .line 3424
    :goto_4
    nop

    .line 3425
    if-eqz v1, :cond_5

    .line 3426
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 3428
    :catch_3
    move-exception v3

    nop

    .line 3430
    :cond_5
    :goto_5
    throw v2
.end method

.method private obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .line 6384
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6385
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 6386
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 6387
    return-object v0
.end method

.method private p2pSendMessage(I)Z
    .locals 1
    .param p1, "what"    # I

    .line 6635
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 6636
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6637
    const/4 v0, 0x1

    return v0

    .line 6639
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p2pSendMessage(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 6648
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 6649
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6650
    const/4 v0, 0x1

    return v0

    .line 6652
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processRssiThreshold(BILcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)V
    .locals 7
    .param p1, "curRssi"    # B
    .param p2, "reason"    # I
    .param p3, "rssiHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 321
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_3

    const/16 v0, -0x80

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 325
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v1, v1, v0

    if-ge p1, v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v1, v1, v0

    .line 330
    .local v1, "maxRssi":B
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v2, v2, v3

    .line 334
    .local v2, "minRssi":B
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setRssi(I)V

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 336
    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/wifi/WifiStateMachine;->startRssiMonitoringOffload(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v3

    .line 337
    .local v3, "ret":I
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-program RSSI thresholds for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], curRssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    goto :goto_1

    .line 325
    .end local v1    # "maxRssi":B
    .end local v2    # "minRssi":B
    .end local v3    # "ret":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    :goto_2
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRssiThreshold: Invalid rssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method private registerForWifiMonitorEvents()V
    .locals 11

    .line 1130
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2008d

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v4, 0x20093

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v5, 0x2402c

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1133
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1133
    const v5, 0x2402b

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1135
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1135
    const v6, 0x24007

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1137
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1137
    const v7, 0x24034

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1139
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1139
    const v7, 0x24033

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1141
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1141
    const v7, 0x2403d

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1143
    const v7, 0x24003

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1145
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1145
    const v8, 0x24004

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1147
    const v9, 0x24035

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1149
    const v9, 0x24006

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1151
    const v10, 0x2400f

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1153
    const v10, 0x24010

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1155
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1156
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1155
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1158
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1157
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1160
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1159
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1162
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1161
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1163
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1164
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1163
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1165
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1166
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1165
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1168
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1167
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1169
    const v3, 0x2403f

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1171
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24065

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1172
    return-void
.end method

.method private removeOemMessage()V
    .locals 2

    .line 6722
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHandler:Landroid/os/Handler;

    const v1, 0x2015f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6723
    return-void
.end method

.method private removeWoWPattern(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 6801
    const/4 v0, 0x0

    .line 6802
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wowlDelPtrn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6803
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "iwpriv "

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6804
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WoW Oem Command iwpriv "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6805
    return v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .line 6359
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6360
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 6361
    .local v0, "dstMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 6362
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .line 6365
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6366
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 6367
    .local v0, "dstMsg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 6368
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 6369
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 6372
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6373
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 6374
    .local v0, "dstMsg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6375
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 6376
    return-void
.end method

.method private reportConnectionAttemptEnd(II)V
    .locals 4
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    .line 3257
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    .line 3258
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionAttemptEnded(I)V

    .line 3259
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    goto :goto_0

    .line 3277
    :cond_0
    goto :goto_0

    .line 3270
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    .line 3272
    nop

    .line 3282
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 3283
    return-void
.end method

.method private reportConnectionAttemptStart(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "targetBSSID"    # Ljava/lang/String;
    .param p3, "roamType"    # I

    .line 3241
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 3242
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 3243
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    .line 3245
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWrongPasswordNotifier:Lcom/android/server/wifi/WrongPasswordNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/WrongPasswordNotifier;->onNewConnectionAttempt()V

    .line 3248
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 3249
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3248
    const v1, 0x200fc

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 3250
    return-void
.end method

.method private runDbsOemCommand(II)Z
    .locals 5
    .param p1, "dbs"    # I
    .param p2, "dfs"    # I

    .line 6835
    const/4 v0, 0x0

    .line 6836
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set_fw_mode_cfg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6837
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "iwpriv "

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6838
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBS spec command  dbs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dfs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6839
    return v0
.end method

.method private runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 6731
    const/4 v0, 0x0

    .line 6733
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNative;->runOemCmd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 6736
    goto :goto_0

    .line 6734
    :catch_0
    move-exception v1

    .line 6735
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    const-string v3, "Fail run Oem command"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6737
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private runSarUserDefinedCommand(IILjava/lang/String;I)Z
    .locals 5
    .param p1, "product"    # I
    .param p2, "num"    # I
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "lteband"    # I

    .line 6843
    const/4 v0, 0x0

    .line 6844
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--USER --PRODUCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --LTEBAND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6846
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAR Choose spec product = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " iface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LTEBAND = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6848
    const-string v2, "vendor_cmd_tool "

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6849
    return v0
.end method

.method private runSarVendorCommand(ILjava/lang/String;)Z
    .locals 5
    .param p1, "sets"    # I
    .param p2, "iface"    # Ljava/lang/String;

    .line 6853
    const/4 v0, 0x0

    .line 6854
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-f sar-vendor-cmd.xml -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --START_CMD --SAR_SET --ENABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --NUM_SPECS 0 --END_CMD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6856
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAR choose sets = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " iface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6857
    const-string v2, "vendor_cmd_tool "

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6858
    return v0
.end method

.method private saveNetworkConfigAndSendReply(Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .line 6559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6563
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, -0x1

    const v2, 0x25008

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 6564
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x22

    if-le v5, v6, :cond_0

    goto :goto_0

    .line 6573
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    .line 6574
    invoke-virtual {v5, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v5

    .line 6575
    .local v5, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v5}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_1

    .line 6576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAVE_NETWORK adding/updating config="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6577
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6578
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6579
    return-object v5

    .line 6581
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 6582
    invoke-virtual {v5}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    iget v8, p1, Landroid/os/Message;->sendingUid:I

    .line 6581
    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-result v6

    if-nez v6, :cond_2

    .line 6583
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAVE_NETWORK enabling config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6584
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6585
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6586
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 6588
    :cond_2
    invoke-direct {p0, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    .line 6589
    const v1, 0x25009

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 6590
    return-object v5

    .line 6565
    .end local v5    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAVE_NETWORK with null configuration or invalid ssid length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 6567
    invoke-virtual {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " my state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6568
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6565
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6569
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6570
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6571
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2
.end method

.method private sendConnectedState()V
    .locals 4

    .line 5687
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5688
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->shouldEvaluateWhetherToSendExplicitlySelected(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5689
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 5690
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v1

    .line 5691
    .local v1, "prompt":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 5692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network selected by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " prompt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5694
    :cond_0
    if-eqz v1, :cond_2

    .line 5698
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 5699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explictlySelected acceptUnvalidated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5701
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v2, :cond_2

    .line 5702
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->explicitlySelected(Z)V

    .line 5707
    .end local v1    # "prompt":Z
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 5710
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->doWoWPsControl(Z)V

    .line 5712
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 5713
    return-void
.end method

.method private sendDppEventBroadcast(ILandroid/net/wifi/WifiDppConfig$DppResult;)V
    .locals 4
    .param p1, "dppEventType"    # I
    .param p2, "result"    # Landroid/net/wifi/WifiDppConfig$DppResult;

    .line 2973
    new-instance v0, Landroid/net/wifi/WifiDppConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiDppConfig;-><init>()V

    .line 2974
    .local v0, "config":Landroid/net/wifi/WifiDppConfig;
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiDppConfig;->setDppResult(Landroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2975
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.qualcomm.qti.net.wifi.DPP_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2976
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2977
    const-string v2, "dppEventType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2978
    const-string v2, "dppEventData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2979
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2980
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .line 2953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2954
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2955
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2956
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2957
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .line 2943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2944
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2945
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 2946
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 2947
    const-string v2, "networkInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2949
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2950
    return-void
.end method

.method private sendOemMessage()V
    .locals 4

    .line 6718
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHandler:Landroid/os/Handler;

    const v1, 0x2015f

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6719
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 3
    .param p1, "newRssi"    # I

    .line 2932
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2935
    goto :goto_0

    .line 2933
    :catch_0
    move-exception v0

    .line 2936
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2937
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2938
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2939
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2940
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 2966
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2967
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2968
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2969
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2970
    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 2988
    const/4 v0, 0x0

    .line 2990
    .local v0, "hidden":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    if-eqz v1, :cond_0

    .line 3003
    const/4 v0, 0x1

    .line 3005
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 3006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 3007
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3006
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3010
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3011
    return v1

    .line 3014
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_4

    .line 3015
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_3

    .line 3017
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 3019
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 3020
    return v2

    .line 3022
    :cond_4
    return v1
.end method

.method private setOemCertCountryCode()V
    .locals 3

    .line 1352
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "country":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1354
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.ctaSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    const-string v1, "WifiStateMachine"

    const-string v2, "CTA version with country code CN!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCode(Ljava/lang/String;)Z

    .line 1358
    :cond_0
    return-void
.end method

.method private setRandomMacOui()Z
    .locals 6

    .line 1382
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, "oui":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1384
    const-string v0, "DA-A1-19"

    .line 1386
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, "ouiParts":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 1388
    .local v2, "ouiBytes":[B
    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1389
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1390
    const/4 v3, 0x2

    aget-object v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting OUI to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1393
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui(Ljava/lang/String;[B)Z

    move-result v3

    return v3
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .line 2756
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2757
    :cond_0
    if-eqz p2, :cond_1

    .line 2758
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0

    .line 2760
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2762
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2763
    :cond_2
    return-void
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .line 2726
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " -want "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2728
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " stack:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2730
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2731
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2727
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2736
    :cond_0
    if-eqz p2, :cond_2

    .line 2737
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v5, p1

    and-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2739
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2740
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 2741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSuspendOptimizationsNative do it "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " stack:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2741
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2747
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 2750
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2751
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Ljava/lang/String;Z)Z

    .line 2753
    :cond_3
    :goto_0
    return-void
.end method

.method private setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 488
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 492
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 493
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 494
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force BSSID to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "due to config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 498
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTargetBssid set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_2
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 501
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    return v0

    .line 489
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private setupClientMode()V
    .locals 6

    .line 4066
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupClientMode() ifacename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateTracker;->updateState(I)V

    .line 4069
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4070
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4071
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    .line 4073
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v5

    .line 4072
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/WifiInjector;->makeWifiConnectivityManager(Landroid/net/wifi/WifiInfo;Z)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    .line 4074
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->setUntrustedConnectionAllowed(Z)V

    .line 4075
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    .line 4076
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4079
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateDataInterface()V

    .line 4080
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerForWifiMonitorEvents()V

    .line 4081
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantLogLevel()V

    .line 4085
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    const v3, 0x2006f

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 4087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 4088
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4089
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4090
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 4092
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->migrateFromLegacyStore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4093
    const-string v3, "WifiStateMachine"

    const-string v4, "Failed to migrate from legacy config store"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 4098
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Ljava/lang/String;Z)Z

    .line 4100
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z

    .line 4101
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    .line 4103
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/BaseWifiDiagnostics;->startLogging(Z)V

    .line 4104
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 4105
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 4112
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Ljava/lang/String;Z)Z

    .line 4115
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 4121
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets(Ljava/lang/String;)Z

    .line 4122
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets(Ljava/lang/String;)Z

    .line 4125
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4126
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4125
    move v4, v2

    goto :goto_2

    .line 4126
    :cond_3
    nop

    .line 4125
    move v4, v1

    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Ljava/lang/String;Z)Z

    .line 4128
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 4130
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_4

    .line 4131
    const v0, 0x20083

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(I)Z

    .line 4135
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wifi/WifiNative;->enableStaAutoReconnect(Ljava/lang/String;Z)Z

    .line 4137
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setConcurrencyPriority(Z)Z

    .line 4138
    return-void
.end method

.method private splitIPv4ToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ipv4"    # Ljava/lang/String;

    .line 6769
    const-string v0, ""

    .line 6772
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 6773
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6774
    .local v2, "ipAddrStr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 6775
    return-object v1

    .line 6777
    :cond_0
    nop

    .line 6780
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 6781
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6782
    .local v4, "p":I
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 6780
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6785
    .end local v4    # "p":I
    :cond_1
    const/4 v1, 0x0

    .end local v3    # "i":I
    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 6786
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6788
    :cond_2
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local ipv4 hex string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    return-object v0

    .line 6777
    .end local v1    # "i":I
    .end local v2    # "ipAddrStr":[Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private splitMacToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .line 6750
    const-string v0, ""

    .line 6752
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 6753
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6754
    .local v2, "macAddrStr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 6755
    return-object v1

    .line 6757
    :cond_0
    nop

    .line 6760
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 6761
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6760
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6763
    :cond_1
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local mac hex string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6764
    return-object v0

    .line 6757
    .end local v1    # "i":I
    .end local v2    # "macAddrStr":[Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private stopClientMode()V
    .locals 4

    .line 4145
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0}, Lcom/android/server/wifi/BaseWifiDiagnostics;->stopLogging()V

    .line 4147
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_0

    .line 4150
    const v0, 0x20084

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(I)Z

    .line 4153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 4154
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 4156
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    if-eqz v2, :cond_1

    .line 4157
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v2}, Landroid/net/ip/IpClient;->shutdown()V

    .line 4160
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v2}, Landroid/net/ip/IpClient;->awaitShutdown()V

    .line 4162
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 4163
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 4164
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    .line 4165
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 4166
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 4168
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 4169
    return-void
.end method

.method private stopIpClient()V
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 1268
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->stop()V

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    .line 1270
    return-void
.end method

.method static unexpectedDisconnectedReason(I)Z
    .locals 1
    .param p0, "reason"    # I

    .line 6493
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 5039
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-nez v0, :cond_0

    .line 5040
    return-void

    .line 5043
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5045
    .local v0, "result":Landroid/net/NetworkCapabilities;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/16 v2, 0xe

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5046
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 5048
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5051
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/16 v2, 0xb

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-static {p1, v1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5052
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 5054
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5057
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_3

    .line 5058
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    goto :goto_2

    .line 5060
    :cond_3
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    .line 5063
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5064
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 5066
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 5069
    :goto_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5070
    return-void
.end method

.method private updateConnectedMacRandomizationSetting()V
    .locals 5

    .line 3610
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "wifi_connected_mac_randomization_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3612
    .local v0, "macRandomizationFlag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3613
    .local v1, "macRandomizationEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3614
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setEnableConnectedMacRandomization(Z)V

    .line 3615
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiMetrics;->setIsMacRandomizationOn(Z)V

    .line 3616
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableConnectedMacRandomization Setting changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    return-void
.end method

.method private updateDataInterface()V
    .locals 5

    .line 1362
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFstDataInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "dataInterfaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1366
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 1368
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    if-eqz v1, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->shutdown()V

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)Landroid/net/ip/IpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    .line 1374
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient;->setMulticastFilter(Z)V

    .line 1376
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    if-eqz v1, :cond_2

    .line 1377
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->setInterface(Ljava/lang/String;)V

    .line 1379
    :cond_2
    return-void
.end method

.method private updateDefaultRouteMacAddress(I)Ljava/lang/String;
    .locals 9
    .param p1, "timeout"    # I

    .line 2889
    const/4 v0, 0x0

    .line 2890
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2891
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2892
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .line 2893
    .local v3, "gateway":Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 2894
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_0

    .line 2895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDefaultRouteMacAddress found Ipv4 default :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2895
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2898
    :cond_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2900
    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 2901
    const/4 v4, 0x0

    .line 2902
    .local v4, "reachable":Z
    const/16 v5, -0xbe

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2904
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, p1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    .line 2910
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2911
    if-ne v4, v5, :cond_2

    .line 2913
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2914
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_2

    .line 2915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .end local v4    # "reachable":Z
    :goto_1
    const-string v6, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2915
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 2910
    .restart local v4    # "reachable":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2905
    :catch_0
    move-exception v6

    .line 2906
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDefaultRouteMacAddress exception reaching :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2907
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2906
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2910
    .end local v6    # "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2911
    if-ne v4, v5, :cond_2

    .line 2913
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2914
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_2

    .line 2915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 2910
    :goto_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2911
    if-ne v4, v5, :cond_1

    .line 2913
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2914
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_1

    .line 2915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2915
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_1
    throw v1

    .line 2921
    .end local v4    # "reachable":Z
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 2922
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v4, v5, v0}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkDefaultGwMacAddress(ILjava/lang/String;)Z

    .line 2926
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "gateway":Ljava/net/InetAddress;
    :cond_3
    goto/16 :goto_0

    .line 2927
    :cond_4
    return-object v0
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 2839
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link configuration changed for netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2844
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2845
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2849
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_2

    .line 2852
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 2855
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_4

    .line 2856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2857
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperties nid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_3

    .line 2861
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2866
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method private wlanIfaceSelect()Ljava/lang/String;
    .locals 5

    .line 6953
    const/4 v0, 0x0

    .line 6954
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 6955
    .local v1, "wifiState":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    .line 6957
    .local v2, "wifiApState":I
    const/4 v3, 0x3

    const/16 v4, 0xd

    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_0

    .line 6959
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6960
    :cond_0
    if-eq v2, v4, :cond_1

    if-ne v1, v3, :cond_2

    if-ne v2, v4, :cond_2

    .line 6963
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getSoftApInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 6965
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method buildDiscoverWithRapidCommitPacket()V
    .locals 10

    .line 3169
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3170
    .local v0, "mDiscoverPacket":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2

    .line 3171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 3172
    .local v1, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3173
    .local v2, "dst":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_0

    .line 3174
    const-string v5, "%02x:"

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3176
    .end local v4    # "i":I
    :cond_0
    const-string v4, "%02x"

    new-array v7, v6, [Ljava/lang/Object;

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3178
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0xc

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 3179
    const-string v7, "%02x"

    new-array v8, v6, [Ljava/lang/Object;

    aget-byte v9, v1, v5

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3181
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3182
    .local v3, "mDiscoverPacketBytes":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->flushAllHlp(Ljava/lang/String;)Z

    .line 3183
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wifi/WifiNative;->addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3185
    .end local v1    # "bytes":[B
    .end local v2    # "dst":Ljava/lang/StringBuilder;
    .end local v3    # "mDiscoverPacketBytes":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public clearANQPCache()V
    .locals 0

    .line 1347
    return-void
.end method

.method public clearTargetBssid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dbg"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 463
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 464
    const/4 v1, 0x0

    return v1

    .line 466
    :cond_0
    const-string v1, "any"

    .line 467
    .local v1, "bssid":Ljava/lang/String;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 468
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 469
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 470
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force BSSID to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "due to config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clearTargetBssid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 476
    :cond_2
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 477
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiNative;->setConfiguredNetworkBSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V
    .locals 0
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "holdoff"    # J
    .param p4, "ess"    # Z

    .line 1808
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .line 1811
    if-eqz p1, :cond_0

    .line 1812
    const v0, 0x20062

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1814
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .line 1820
    const v0, 0x20049

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1821
    return-void
.end method

.method public disconnectCommand(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 1824
    const v0, 0x20049

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1825
    return-void
.end method

.method doNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 5218
    const v0, 0x20094

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5219
    return-void
.end method

.method public dppStopListen(Lcom/android/internal/util/AsyncChannel;)V
    .locals 1
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 7294
    const v0, 0x20132

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 7295
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2174
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2175
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSignalLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastBssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationalMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserWantsSuspendOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiCountryCode;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 2191
    :cond_0
    const-string v0, "mNetworkFactory is not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    if-eqz v0, :cond_1

    .line 2195
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 2197
    :cond_1
    const-string v0, "mUntrustedNetworkFactory is not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wlan Wake Reasons:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2202
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2203
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2204
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->dump(Ljava/io/PrintWriter;)V

    .line 2205
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2206
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->captureBugReportData(I)V

    .line 2207
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpClient(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2209
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_2

    .line 2210
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 2212
    :cond_2
    const-string v0, "mWifiConnectivityManager is not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWakeupController()Lcom/android/server/wifi/WakeupController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WakeupController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2215
    return-void
.end method

.method public dumpIpClient(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ip/IpClient;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2170
    :cond_0
    return-void
.end method

.method public enablePktLog(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 7180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pktlog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7181
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "iwpriv "

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableRssiPolling(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 2060
    const/4 v0, 0x0

    const v1, 0x20052

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2061
    return-void
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2102
    move v0, p2

    .line 2103
    .local v0, "enabler":I
    const v1, 0x2005c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2104
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 1303
    if-lez p1, :cond_1

    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    .line 1305
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    .line 1305
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    goto :goto_1

    .line 1308
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    .line 1309
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1311
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->configureVerboseHalLogging(Z)V

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantLogLevel()V

    .line 1313
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiCountryCode;->enableVerboseLogging(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScoreReport;->enableVerboseLogging(Z)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->startLogging(Z)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    if-eqz v0, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enableVerboseLogging(I)V

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor;->enableVerboseLogging(I)V

    .line 1319
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->enableVerboseLogging(I)V

    .line 1320
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->enableVerboseLogging(I)V

    .line 1321
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->enableVerboseLogging(I)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->enableVerboseLogging(I)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_3

    .line 1325
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->enableVerboseLogging(Z)V

    .line 1327
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    if-eqz v0, :cond_4

    .line 1328
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->enableVerboseLogging(Z)V

    .line 1331
    :cond_4
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 6485
    const v0, 0x200a6

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 6486
    return-void
.end method

.method public failureDetected(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 3638
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getSelfRecovery()Lcom/android/server/wifi/SelfRecovery;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SelfRecovery;->trigger(I)V

    .line 3639
    return-void
.end method

.method getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1903
    const v0, 0x200a8

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1905
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1906
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1907
    return-object v1
.end method

.method public getCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "capaType"    # Ljava/lang/String;

    .line 3231
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    .line 4224
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .line 2091
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_0

    .line 2092
    new-instance v0, Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->netId:I

    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    return-object v0

    .line 2094
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getCurrentScanResult()Landroid/net/wifi/ScanResult;
    .locals 5

    .line 4205
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4206
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4207
    return-object v1

    .line 4209
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 4210
    .local v2, "BSSID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 4211
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 4213
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4214
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v3

    .line 4216
    .local v3, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v3, :cond_2

    .line 4217
    return-object v1

    .line 4220
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/server/wifi/ScanDetailCache;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 4198
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4199
    const/4 v0, 0x0

    return-object v0

    .line 4201
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedTimeMilli()J
    .locals 4

    .line 1453
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 1456
    .local v0, "now_ms":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    sub-long v2, v0, v2

    return-wide v2

    .line 1458
    .end local v0    # "now_ms":J
    :cond_0
    return-wide v2
.end method

.method public getIpReachabilityDisconnectEnabled()Z
    .locals 1

    .line 6667
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2265
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v1, :cond_0

    .line 2266
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    if-eqz v1, :cond_1

    .line 2269
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    if-lez v1, :cond_2

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    const/16 v2, 0x3f2

    if-eq v1, v2, :cond_2

    .line 2273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    :cond_2
    const-string v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getUptimeSinceBootMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2276
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2277
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 2663
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2527
    :sswitch_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_3

    .line 2532
    const-string v1, " OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2533
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    .line 2534
    const-string v1, " FAIL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_28

    .line 2537
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2518
    :sswitch_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    const-string v1, " txpkts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccess:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2523
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->txBad:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2524
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2525
    goto/16 :goto_3

    .line 2289
    :sswitch_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2294
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_28

    .line 2295
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    const-string v2, " nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2297
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_5

    .line 2298
    const-string v2, " hidden"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    :cond_5
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "*"

    .line 2301
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2302
    const-string v2, " hasPSK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    :cond_6
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_7

    .line 2305
    const-string v2, " ephemeral"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    :cond_7
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_8

    .line 2308
    const-string v2, " selfAdded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    :cond_8
    const-string v2, " cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2311
    const-string v2, " suid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2315
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2317
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2320
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_28

    .line 2321
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    const-string v2, " nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2323
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_9

    .line 2324
    const-string v2, " hidden"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    :cond_9
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2327
    const-string v2, " hasPSK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    :cond_a
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_b

    .line 2330
    const-string v2, " ephemeral"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    :cond_b
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_c

    .line 2333
    const-string v2, " selfAdded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    :cond_c
    const-string v2, " cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2336
    const-string v2, " suid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2337
    nop

    .line 2338
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 2339
    .local v2, "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string v3, " ajst="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    .line 2339
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    .end local v2    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    goto/16 :goto_3

    .line 2654
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2656
    goto/16 :goto_3

    .line 2344
    :sswitch_5
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timedOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2349
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2350
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " blacklist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    goto/16 :goto_3

    .line 2279
    .end local v1    # "bssid":Ljava/lang/String;
    :sswitch_6
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2283
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 2284
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v1, :cond_28

    .line 2285
    invoke-virtual {v1}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2387
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 2388
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    :cond_e
    const-string v1, " nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2391
    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2392
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2393
    const-string v1, " lastbssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getFrequency()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 2396
    const-string v1, " freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2397
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2357
    :sswitch_8
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    const-string v1, " nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2364
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_10

    .line 2365
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    :cond_10
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetworkConfigKey()Ljava/lang/String;

    move-result-object v2

    .line 2368
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_28

    .line 2369
    const-string v3, " last="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2542
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "key":Ljava/lang/String;
    :sswitch_9
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2547
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2548
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 2549
    .local v2, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 2550
    .local v3, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v2, :cond_11

    .line 2551
    const-string v4, " st="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2553
    :cond_11
    if-eqz v3, :cond_12

    .line 2554
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2556
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "state":Landroid/net/NetworkInfo$State;
    .end local v3    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    :cond_12
    goto/16 :goto_3

    .line 2658
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2659
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2630
    :sswitch_b
    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    goto/16 :goto_3

    .line 2598
    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    goto/16 :goto_3

    .line 2595
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    goto/16 :goto_3

    .line 2644
    :sswitch_e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_13

    .line 2646
    const-string v1, "DHCP_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2647
    :cond_13
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x20010

    if-ne v1, v2, :cond_14

    .line 2648
    const-string v1, "STATIC_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2650
    :cond_14
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    goto/16 :goto_3

    .line 2634
    :sswitch_f
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_15

    .line 2636
    const-string v1, "DHCP_OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2637
    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x2000f

    if-ne v1, v2, :cond_16

    .line 2638
    const-string v1, "STATIC_OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2640
    :cond_16
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    goto/16 :goto_3

    .line 2624
    :sswitch_10
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    const-string v1, " thresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    goto/16 :goto_3

    .line 2590
    :sswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2591
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2447
    :sswitch_12
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2452
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_18

    .line 2453
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2454
    .local v2, "now":Ljava/lang/Long;
    const-string v3, " bssid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    const-string v3, " rssi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2456
    const-string v3, " freq="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2457
    iget-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_17

    iget-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_17

    .line 2458
    const-string v3, " seen="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v1, Landroid/net/wifi/ScanResult;->seen:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2461
    :cond_17
    const-string v3, " !seen="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2464
    .end local v2    # "now":Ljava/lang/Long;
    :cond_18
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2465
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    :cond_19
    const-string v2, " roam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    const-string v2, " fail count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    goto/16 :goto_3

    .line 2429
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_13
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2434
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1a

    .line 2435
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 2438
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    :cond_1b
    const-string v2, " roam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2442
    if-eqz v1, :cond_28

    .line 2443
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2374
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_14
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1c

    .line 2379
    const-string v1, " BSSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 2382
    const-string v1, " Target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    :cond_1d
    const-string v1, " roam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    goto/16 :goto_3

    .line 2580
    :sswitch_15
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_28

    .line 2585
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2559
    :sswitch_16
    const/4 v1, -0x1

    .line 2560
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2561
    .local v2, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1e

    .line 2562
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    .line 2565
    :cond_1e
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    const-string v5, " failures: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "wifi_max_dhcp_retry_count"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 2575
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    :cond_1f
    const-string v5, " bcn=%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    goto/16 :goto_3

    .line 2615
    .end local v1    # "count":I
    .end local v2    # "c":Landroid/net/wifi/WifiConfiguration;
    :sswitch_17
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisableP2pWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2620
    goto/16 :goto_3

    .line 2608
    :sswitch_18
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2613
    goto/16 :goto_3

    .line 2601
    :sswitch_19
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2606
    goto/16 :goto_3

    .line 2403
    :sswitch_1a
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2408
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2409
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    :cond_20
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2411
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    :cond_21
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2413
    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2414
    const-string v1, " sc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2415
    const-string v1, " link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2416
    const-string v1, " tx=%.1f,"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    const-string v1, " %.1f,"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    const-string v1, " %.1f "

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    const-string v1, " rx=%.1f"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    const-string v1, " bcn=%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v1

    .line 2422
    .local v1, "report":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 2423
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :cond_22
    const-string v2, " score=%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    goto/16 :goto_3

    .line 2511
    .end local v1    # "report":Ljava/lang/String;
    :sswitch_1b
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2516
    goto/16 :goto_3

    .line 2497
    :sswitch_1c
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2501
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetworkConfigKey()Ljava/lang/String;

    move-result-object v1

    .line 2502
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 2503
    const-string v2, " last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    :cond_23
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2506
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_28

    if-eqz v1, :cond_24

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2507
    :cond_24
    const-string v3, " target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2471
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1d
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2476
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2477
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    const-string v2, " prio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2479
    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2480
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_25

    .line 2481
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2484
    .local v2, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_27

    .line 2485
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2486
    const-string v3, " is current"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2488
    :cond_26
    const-string v3, " current="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    const-string v3, " prio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2490
    const-string v3, " status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2493
    .end local v2    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_27
    :goto_2
    nop

    .line 2670
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_28
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_1d
        0x20036 -> :sswitch_1c
        0x2003b -> :sswitch_1b
        0x20053 -> :sswitch_1a
        0x2005e -> :sswitch_19
        0x20060 -> :sswitch_18
        0x20070 -> :sswitch_17
        0x2008b -> :sswitch_16
        0x2008c -> :sswitch_15
        0x2008d -> :sswitch_14
        0x2008f -> :sswitch_13
        0x20090 -> :sswitch_1a
        0x20091 -> :sswitch_12
        0x20093 -> :sswitch_14
        0x20095 -> :sswitch_11
        0x200a2 -> :sswitch_10
        0x200a3 -> :sswitch_10
        0x200a4 -> :sswitch_10
        0x200c8 -> :sswitch_f
        0x200c9 -> :sswitch_e
        0x200ca -> :sswitch_d
        0x200cb -> :sswitch_c
        0x200cd -> :sswitch_b
        0x20137 -> :sswitch_a
        0x2300b -> :sswitch_9
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_7
        0x24006 -> :sswitch_6
        0x2402b -> :sswitch_5
        0x2403f -> :sswitch_8
        0x24065 -> :sswitch_4
        0x25001 -> :sswitch_13
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_2
        0x25011 -> :sswitch_1c
        0x25014 -> :sswitch_1a
        0x30003 -> :sswitch_1
        0x30004 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getMcastLockManagerFilterController()Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mMcastLockManagerFilterController:Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .line 1447
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method protected getOperationalModeForTest()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1774
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method getPollRssiIntervalMsecs()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    return v0
.end method

.method getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 1284
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1285
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1286
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v0, v3}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getScanResultForBssid(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;

    .line 3076
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3078
    .local v0, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 3079
    .local v2, "result":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 3080
    .local v3, "scanRes":Landroid/net/wifi/ScanResult;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScanResults scanRes.BSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3082
    return-object v3

    .line 3083
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    goto :goto_0

    .line 3084
    .end local v3    # "scanRes":Landroid/net/wifi/ScanResult;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    return-object v0
.end method

.method getWifiLinkLayerStats()Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 12

    .line 1527
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1528
    const-string v0, "getWifiLinkLayerStats called without an interface"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1529
    const/4 v0, 0x0

    return-object v0

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 1532
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v0

    .line 1533
    .local v0, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    if-eqz v0, :cond_1

    .line 1534
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1535
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1536
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1537
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->beacon_rx:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 1538
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->updatePacketRates(Lcom/android/server/wifi/WifiLinkLayerStats;J)V

    goto :goto_0

    .line 1540
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/FrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v1

    .line 1541
    .local v1, "mTxPkts":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v10

    .line 1542
    .local v10, "mRxPkts":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    move-wide v4, v1

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi/ExtendedWifiInfo;->updatePacketRates(JJJ)V

    .line 1544
    .end local v1    # "mTxPkts":J
    .end local v10    # "mRxPkts":J
    :goto_0
    return-object v0
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

    .line 6700
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScoreReport()Lcom/android/server/wifi/WifiScoreReport;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    return-object v0
.end method

.method handle3GAuthRequest(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;)V
    .locals 6
    .param p1, "requestData"    # Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;

    .line 6433
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6438
    :cond_0
    const-string v0, "id does not match targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6439
    return-void

    .line 6436
    :cond_1
    :goto_0
    const-string v0, "id matches targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6442
    nop

    .line 6443
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/TelephonyUtil;->get3GAuthResponse(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;Landroid/telephony/TelephonyManager;)Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;

    move-result-object v0

    .line 6444
    .local v0, "response":Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;
    if-eqz v0, :cond_2

    .line 6445
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    iget-object v4, v0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;->response:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 6448
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->umtsAuthFailedResponse(Ljava/lang/String;I)Z

    .line 6450
    :goto_1
    return-void
.end method

.method handleGsmAuthRequest(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;)V
    .locals 5
    .param p1, "requestData"    # Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;

    .line 6411
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6416
    :cond_0
    const-string v0, "id does not match targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6417
    return-void

    .line 6414
    :cond_1
    :goto_0
    const-string v0, "id matches targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6420
    iget-object v0, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 6421
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/util/TelephonyUtil;->getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 6422
    .local v0, "response":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 6423
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(Ljava/lang/String;I)Z

    goto :goto_1

    .line 6425
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplicant Response -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 6426
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    const-string v4, "GSM-AUTH"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 6430
    :goto_1
    return-void
.end method

.method public handleIfaceDestroyed()V
    .locals 0

    .line 1733
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    .line 1734
    return-void
.end method

.method handlePostDhcpSetup()V
    .locals 3

    .line 3219
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3220
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 3222
    const v0, 0x2300f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(II)Z

    .line 3225
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(Ljava/lang/String;I)Z

    .line 3227
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 4

    .line 3141
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(Ljava/lang/String;I)Z

    .line 3148
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3149
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats()Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 3154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x30006

    if-eqz v0, :cond_0

    .line 3156
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3157
    .local v0, "msg":Landroid/os/Message;
    const v3, 0x2300f

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3158
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3159
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3160
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3161
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3162
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3164
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3166
    :goto_0
    return-void
.end method

.method handlePreFilsDhcpSetup()V
    .locals 3

    .line 3196
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x30006

    if-eqz v0, :cond_0

    .line 3198
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3199
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x2300f

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3200
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3201
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3202
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3203
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3204
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3206
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3208
    :goto_0
    return-void
.end method

.method public handleUserStop(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2226
    const v0, 0x200cf

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2227
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2218
    const v0, 0x200cd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2219
    return-void
.end method

.method public handleUserUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2222
    const v0, 0x200ce

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2223
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectedMacRandomizationEnabled()Z
    .locals 1

    .line 3627
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    .line 1684
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_1

    .line 1685
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1684
    :goto_1
    return v0
.end method

.method public isHalStarted()Z
    .locals 1

    .line 7193
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7194
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    return v0
.end method

.method public isSupplicantTransientState()Z
    .locals 4

    .line 1689
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 1690
    .local v0, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1700
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 1701
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant is under steady state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1695
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_3

    .line 1696
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant is under transient state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;

    .line 1795
    const v0, 0x20069

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1796
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1797
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1798
    return v1
.end method

.method maybeRegisterNetworkFactory()V
    .locals 7

    .line 3537
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-nez v0, :cond_0

    .line 3538
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3539
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 3540
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "WIFI"

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    .line 3542
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    .line 3543
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->register()V

    .line 3547
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "WIFI_UT"

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    .line 3549
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->setScoreFilter(I)V

    .line 3550
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->register()V

    .line 3553
    :cond_0
    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    .line 1838
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1839
    return-void
.end method

.method public reconnectCommand(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 1831
    const v0, 0x2004a

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1832
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2244
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x20053

    if-eq v0, v1, :cond_0

    .line 2248
    const/4 v0, 0x1

    return v0

    .line 2246
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method registerConnected()V
    .locals 3

    .line 4172
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4173
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkAfterConnect(I)Z

    .line 4175
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScoreReport;->reset()V

    .line 4178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4179
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4180
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->onPasspointNetworkConnected(Ljava/lang/String;)V

    .line 4183
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method registerDisconnected()V
    .locals 2

    .line 4186
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4187
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkAfterDisconnect(I)Z

    .line 4189
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->removeAllEphemeralOrPasspointConfiguredNetworks()Z

    .line 4191
    :cond_0
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .line 1846
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1847
    return-void
.end method

.method public removeAppConfigs(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2118
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2119
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2120
    iput p2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2121
    const v1, 0x20061

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2122
    return-void
.end method

.method public removeUserConfigs(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2128
    const v0, 0x20098

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2129
    return-void
.end method

.method reportOnTime()Ljava/lang/String;
    .locals 14

    .line 1507
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 1508
    .local v0, "now":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1510
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    sub-int/2addr v3, v4

    .line 1511
    .local v3, "on":I
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1512
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    sub-int/2addr v4, v5

    .line 1513
    .local v4, "tx":I
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iput v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1514
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    sub-int/2addr v5, v6

    .line 1515
    .local v5, "rx":I
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1516
    iget-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    .line 1517
    .local v6, "period":I
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1518
    const-string v7, "[on:%d tx:%d rx:%d period:%d]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x3

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    sub-int/2addr v7, v8

    .line 1521
    .end local v3    # "on":I
    .local v7, "on":I
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1522
    .end local v6    # "period":I
    .local v3, "period":I
    const-string v6, " from screen [on:%d period:%d]"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public declared-synchronized resetSimAuthNetworks(Z)V
    .locals 2
    .param p1, "simPresent"    # Z

    monitor-enter p0

    .line 2080
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSimAuthNetworks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2081
    sput-boolean p1, Lcom/android/server/wifi/WifiStateMachine;->isSimCardPresent:Z

    .line 2083
    const v0, 0x20065

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    monitor-exit p0

    return-void

    .line 2079
    .end local p1    # "simPresent":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiStateMachine;
    throw p1
.end method

.method public runFtmCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 6862
    const/4 v0, 0x0

    .line 6863
    .local v0, "ret":Z
    const-string v1, "myftm "

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6864
    const-string v1, "myftm "

    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/WifiStateMachine;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6866
    :cond_0
    return v0
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 2110
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2111
    return-void
.end method

.method public setFtmMode(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 6697
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setFtmMode(Z)Z

    move-result v0

    return v0
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2071
    const/4 v0, 0x0

    const v1, 0x2004d

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2072
    return-void
.end method

.method public setIpReachabilityDisconnectEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 6674
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    .line 6675
    return-void
.end method

.method public setOperationalMode(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "ifaceName"    # Ljava/lang/String;

    .line 1740
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for iface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1743
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mModeChange:Z

    .line 1744
    if-eq p1, v0, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1749
    :cond_1
    if-eqz p2, :cond_2

    .line 1750
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1751
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1753
    :cond_2
    const-string v0, "WifiStateMachine"

    const-string v1, "supposed to enter connect mode, but iface is null -> DefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1759
    :goto_0
    const v0, 0x20048

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V

    .line 1760
    return-void
.end method

.method setPollRssiIntervalMsecs(I)V
    .locals 0
    .param p1, "newPollIntervalMsecs"    # I

    .line 454
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    .line 455
    return-void
.end method

.method setPowerSaveForFilsDhcp()V
    .locals 3

    .line 3211
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(Ljava/lang/String;I)Z

    .line 3213
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3214
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 3215
    return-void
.end method

.method setSupplicantLogLevel()V
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Z)V

    .line 1295
    return-void
.end method

.method public setTrafficPoller(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 2
    .param p1, "trafficPoller"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 1277
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 1278
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->setInterface(Ljava/lang/String;)V

    .line 1281
    :cond_0
    return-void
.end method

.method public setWifiApState(I)V
    .locals 1
    .param p1, "wifiApState"    # I

    .line 7189
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7190
    return-void
.end method

.method public setWifiDefaultPower()Z
    .locals 5

    .line 7165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getDomainId()I

    move-result v0

    .line 7166
    .local v0, "preDomainId":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->wlanIfaceSelect()Ljava/lang/String;

    move-result-object v1

    .line 7167
    .local v1, "preSarIface":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7170
    :cond_0
    sget v2, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    .line 7172
    sput-object v1, Lcom/android/server/wifi/WifiStateMachine;->mSarIface:Ljava/lang/String;

    .line 7173
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->mDomainId:I

    .line 7174
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mProductId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not need to set default power."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7175
    const/4 v2, 0x1

    return v2

    .line 7168
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public setWifiDiagnostics(Lcom/android/server/wifi/BaseWifiDiagnostics;)V
    .locals 0
    .param p1, "WifiDiagnostics"    # Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 1273
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 1274
    return-void
.end method

.method public setWifiStateForApiCalls(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 1623
    packed-switch p1, :pswitch_data_0

    .line 1640
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempted to set an invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return-void

    .line 1633
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1634
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1635
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting wifi state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldEvaluateWhetherToSendExplicitlySelected(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5674
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5675
    const-string v1, "WifiStateMachine"

    const-string v2, "Current WifiConfiguration is null, but IP provisioning just succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    return v0

    .line 5678
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 5679
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetwork()I

    move-result v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 5680
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 5679
    :cond_1
    return v0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .line 3972
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3973
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3974
    return-object v0

    .line 3976
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4050
    :sswitch_0
    const-string v0, "RSSI_PKTCNT_FETCH"

    .line 4051
    goto :goto_0

    .line 3987
    :sswitch_1
    const-string v0, "WifiManager.DISABLE_NETWORK"

    .line 3988
    goto :goto_0

    .line 3993
    :sswitch_2
    const-string v0, "SAVE_NETWORK"

    .line 3994
    goto :goto_0

    .line 3996
    :sswitch_3
    const-string v0, "FORGET_NETWORK"

    .line 3997
    goto :goto_0

    .line 3990
    :sswitch_4
    const-string v0, "CONNECT_NETWORK"

    .line 3991
    goto :goto_0

    .line 4053
    :sswitch_5
    const-string v0, "WifiMonitor.DPP_EVENT"

    .line 4054
    goto :goto_0

    .line 4011
    :sswitch_6
    const-string v0, "FILS_NETWORK_CONNECTION_EVENT"

    .line 4012
    goto :goto_0

    .line 4029
    :sswitch_7
    const-string v0, "WifiMonitor.HS20_REMEDIATION_EVENT"

    .line 4030
    goto :goto_0

    .line 4023
    :sswitch_8
    const-string v0, "WifiMonitor.RX_HS20_ANQP_ICON_EVENT"

    .line 4024
    goto :goto_0

    .line 4026
    :sswitch_9
    const-string v0, "WifiMonitor.GAS_QUERY_DONE_EVENT"

    .line 4027
    goto :goto_0

    .line 4032
    :sswitch_a
    const-string v0, "WifiMonitor.GAS_QUERY_START_EVENT"

    .line 4033
    goto :goto_0

    .line 4020
    :sswitch_b
    const-string v0, "WifiMonitor.ANQP_DONE_EVENT"

    .line 4021
    goto :goto_0

    .line 4017
    :sswitch_c
    const-string v0, "ASSOCIATION_REJECTION_EVENT"

    .line 4018
    goto :goto_0

    .line 4005
    :sswitch_d
    const-string v0, "SUP_REQUEST_IDENTITY"

    .line 4006
    goto :goto_0

    .line 4002
    :sswitch_e
    const-string v0, "AUTHENTICATION_FAILURE_EVENT"

    .line 4003
    goto :goto_0

    .line 3999
    :sswitch_f
    const-string v0, "SUPPLICANT_STATE_CHANGE_EVENT"

    .line 4000
    goto :goto_0

    .line 4014
    :sswitch_10
    const-string v0, "NETWORK_DISCONNECTION_EVENT"

    .line 4015
    goto :goto_0

    .line 4008
    :sswitch_11
    const-string v0, "NETWORK_CONNECTION_EVENT"

    .line 4009
    goto :goto_0

    .line 4047
    :sswitch_12
    const-string v0, "P2P.BLOCK_DISCOVERY"

    .line 4048
    goto :goto_0

    .line 4044
    :sswitch_13
    const-string v0, "P2P.SET_MIRACAST_MODE"

    .line 4045
    goto :goto_0

    .line 4041
    :sswitch_14
    const-string v0, "P2P.DISCONNECT_WIFI_RESPONSE"

    .line 4042
    goto :goto_0

    .line 3984
    :sswitch_15
    const-string v0, "WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST"

    .line 3985
    goto :goto_0

    .line 4038
    :sswitch_16
    const-string v0, "P2P_CONNECTION_CHANGED"

    .line 4039
    goto :goto_0

    .line 4035
    :sswitch_17
    const-string v0, "GROUP_CREATING_TIMED_OUT"

    .line 4036
    goto :goto_0

    .line 3981
    :sswitch_18
    const-string v0, "AsyncChannel.CMD_CHANNEL_DISCONNECTED"

    .line 3982
    goto :goto_0

    .line 3978
    :sswitch_19
    const-string v0, "AsyncChannel.CMD_CHANNEL_HALF_CONNECTED"

    .line 3979
    nop

    .line 4059
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_19
        0x11004 -> :sswitch_18
        0x23001 -> :sswitch_17
        0x2300b -> :sswitch_16
        0x2300c -> :sswitch_15
        0x2300d -> :sswitch_14
        0x2300e -> :sswitch_13
        0x2300f -> :sswitch_12
        0x24003 -> :sswitch_11
        0x24004 -> :sswitch_10
        0x24006 -> :sswitch_f
        0x24007 -> :sswitch_e
        0x2400f -> :sswitch_d
        0x2402b -> :sswitch_c
        0x2402c -> :sswitch_b
        0x24033 -> :sswitch_a
        0x24034 -> :sswitch_9
        0x24035 -> :sswitch_8
        0x2403d -> :sswitch_7
        0x2403f -> :sswitch_6
        0x24065 -> :sswitch_5
        0x25001 -> :sswitch_4
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_2
        0x25011 -> :sswitch_1
        0x25014 -> :sswitch_0
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 3968
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startConnectToNetwork(IILjava/lang/String;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "uid"    # I
    .param p3, "bssid"    # Ljava/lang/String;

    .line 6461
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6462
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSystemConnectionRequest:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6463
    :cond_0
    const v1, 0x2008f

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 6465
    :cond_1
    monitor-exit v0

    .line 6467
    return-void

    .line 6465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRoamToNetwork(ILandroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 6476
    const v0, 0x20091

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 6477
    return-void
.end method

.method startRssiMonitoringOffload(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 2
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B
    .param p3, "rssiHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 1608
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method startWifiIPPacketOffload(ILandroid/net/KeepalivePacketData;I)I
    .locals 11
    .param p1, "slot"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalSeconds"    # I

    .line 1573
    const/4 v0, 0x0

    .line 1574
    .local v0, "packet":[B
    const/4 v1, 0x0

    .line 1575
    .local v1, "dstMac":[B
    const/4 v2, 0x0

    move v3, v2

    .line 1578
    .local v3, "proto":I
    :try_start_0
    invoke-virtual {p2}, Landroid/net/KeepalivePacketData;->getPacket()[B

    move-result-object v8
    :try_end_0
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1579
    .end local v0    # "packet":[B
    .local v8, "packet":[B
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->getDstMacForKeepalive(Landroid/net/KeepalivePacketData;)[B

    move-result-object v7
    :try_end_1
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1580
    .end local v1    # "dstMac":[B
    .local v7, "dstMac":[B
    :try_start_2
    invoke-static {p2}, Lcom/android/server/wifi/WifiStateMachine;->getEtherProtoForKeepalive(Landroid/net/KeepalivePacketData;)I

    move-result v9
    :try_end_2
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1583
    .end local v3    # "proto":I
    .local v9, "proto":I
    nop

    .line 1585
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    mul-int/lit16 v10, p3, 0x3e8

    move v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacket(Ljava/lang/String;I[B[BII)I

    move-result v0

    .line 1587
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): hardware error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1590
    const/16 v1, -0x1f

    return v1

    .line 1592
    :cond_0
    return v2

    .line 1581
    .end local v0    # "ret":I
    .end local v9    # "proto":I
    .restart local v3    # "proto":I
    :catch_0
    move-exception v0

    move-object v1, v7

    goto :goto_0

    .end local v7    # "dstMac":[B
    .restart local v1    # "dstMac":[B
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v8    # "packet":[B
    .local v0, "packet":[B
    :catch_2
    move-exception v2

    move-object v8, v0

    move-object v0, v2

    .line 1582
    .local v0, "e":Landroid/net/KeepalivePacketData$InvalidPacketException;
    .restart local v8    # "packet":[B
    :goto_0
    iget v2, v0, Landroid/net/KeepalivePacketData$InvalidPacketException;->error:I

    return v2
.end method

.method stopRssiMonitoringOffload()I
    .locals 2

    .line 1612
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method stopWifiIPPacketOffload(I)I
    .locals 3
    .param p1, "slot"    # I

    .line 1597
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacket(Ljava/lang/String;I)I

    move-result v0

    .line 1598
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): hardware error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1600
    const/16 v1, -0x1f

    return v1

    .line 1602
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1855
    const v0, 0x20034

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1856
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1857
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1858
    return v1
.end method

.method public syncAddOrUpdatePasspointConfig(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p3, "uid"    # I

    .line 1935
    const/4 v0, 0x0

    const v1, 0x2006a

    invoke-virtual {p1, v1, p3, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1937
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    nop

    .line 1938
    .local v0, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1939
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .line 2053
    const v0, 0x25011

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 2054
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x25012

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2055
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2056
    return v1
.end method

.method public syncDppAddBootstrapQrCode(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "uri"    # Ljava/lang/String;

    .line 7207
    const/4 v0, 0x0

    const v1, 0x2012e

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7209
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 7210
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7211
    return v1
.end method

.method public syncDppBootstrapGenerate(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 7224
    const/4 v0, 0x0

    const v1, 0x2012d

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7226
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 7227
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7228
    return v1
.end method

.method public syncDppBootstrapRemove(Lcom/android/internal/util/AsyncChannel;I)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bootstrap_id"    # I

    .line 7256
    const v0, 0x2012f

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 7258
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 7259
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7260
    return v1
.end method

.method public syncDppConfiguratorAdd(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "curve"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "expiry"    # I

    .line 7309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7310
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "curve"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7311
    const-string v1, "key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7312
    const v1, 0x20133

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7314
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 7315
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 7316
    return v2
.end method

.method public syncDppConfiguratorGetKey(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "id"    # I

    .line 7359
    nop

    .line 7360
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7359
    const/4 v1, 0x0

    const v2, 0x20136

    invoke-virtual {p1, v2, v1, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7361
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 7362
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7363
    return-object v1
.end method

.method public syncDppConfiguratorRemove(Lcom/android/internal/util/AsyncChannel;I)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config_id"    # I

    .line 7328
    const v0, 0x20134

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 7329
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 7330
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7331
    return v1
.end method

.method public syncDppGetUri(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bootstrap_id"    # I

    .line 7240
    const v0, 0x20130

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 7242
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 7243
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7244
    return-object v1
.end method

.method public syncDppListen(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;IZZ)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "dpp_role"    # I
    .param p4, "qr_mutual"    # Z
    .param p5, "netrole_ap"    # Z

    .line 7278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7279
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "freq"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7280
    const-string v1, "dppRole"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7281
    const-string v1, "mutual"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7282
    const-string v1, "netRoleAp"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7283
    const/4 v1, 0x0

    const v2, 0x20131

    invoke-virtual {p1, v2, v1, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7285
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 7286
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 7287
    return v2
.end method

.method public syncDppStartAuth(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 7343
    const/4 v0, 0x0

    const v1, 0x20135

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7345
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 7346
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 7347
    return v1
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .line 2039
    nop

    .line 2040
    nop

    .line 2039
    const v0, 0x20036

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v0

    .line 2041
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2042
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2043
    return v1
.end method

.method public syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 4
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1870
    const-string v0, "send CMD_GET_CONFIGURED_NETWORKS"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1873
    const v0, 0x2003b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 1874
    .local v0, "resultMsg":Landroid/os/Message;
    if-nez v0, :cond_0

    .line 1875
    const/4 v1, 0x0

    return-object v1

    .line 1877
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1879
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive CMD_GET_CONFIGURED_NETWORKS result, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1881
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1882
    return-object v1
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .line 1723
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1724
    :try_start_0
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    monitor-exit v0

    return-object v1

    .line 1725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 2013
    const v0, 0x2003f

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2014
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 2015
    .local v1, "result":Lcom/android/server/wifi/WifiLinkLayerStats;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2016
    return-object v1
.end method

.method public syncGetMatchingOsuProviders(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation

    .line 1919
    nop

    .line 1920
    const v0, 0x2006d

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1921
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1922
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1923
    return-object v1
.end method

.method public syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1895
    const v0, 0x20063

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1896
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1897
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1898
    return-object v1
.end method

.method public syncGetPasspointConfigs(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 1964
    const v0, 0x2006c

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1965
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1966
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1967
    return-object v1
.end method

.method public syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1887
    const v0, 0x2003e

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1889
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1890
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1891
    return-object v1
.end method

.method public syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1995
    const v0, 0x2003d

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1996
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1997
    .local v1, "supportedFeatureSet":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1999
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2001
    .local v2, "checkRtt":Z
    if-nez v2, :cond_0

    .line 2002
    and-int/lit16 v1, v1, -0x181

    .line 2006
    :cond_0
    return v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .line 7185
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiState()I
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1670
    const-string v0, "[invalid state]"

    return-object v0

    .line 1668
    :pswitch_0
    const-string v0, "unknown state"

    return-object v0

    .line 1666
    :pswitch_1
    const-string v0, "enabled"

    return-object v0

    .line 1664
    :pswitch_2
    const-string v0, "enabling"

    return-object v0

    .line 1662
    :pswitch_3
    const-string v0, "disabled"

    return-object v0

    .line 1660
    :pswitch_4
    const-string v0, "disabling"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncInitialize(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 5
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 6683
    const v0, 0x20087

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 6684
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6685
    .local v1, "result":Z
    :goto_0
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=qcdbg= syncInitialize() result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6687
    return v1
.end method

.method public syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bssid"    # J
    .param p4, "fileName"    # Ljava/lang/String;

    .line 1785
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1786
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BSSID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1787
    const-string v1, "FILENAME"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const v1, 0x20068

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1789
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1790
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1791
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .line 2025
    const v0, 0x20035

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 2026
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2027
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2028
    return v1
.end method

.method public syncRemovePasspointConfig(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;

    .line 1950
    const v0, 0x2006b

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1952
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1953
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1954
    return v1
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1714
    new-instance v0, Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 1715
    .local v0, "result":Landroid/net/wifi/WifiInfo;
    return-object v0
.end method

.method public syncStartSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;Lcom/android/internal/util/AsyncChannel;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p3, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;
    .param p4, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1979
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1980
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x200fe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1981
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1982
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1983
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "OsuProvider"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1984
    invoke-virtual {p4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 1985
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1986
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1987
    return v2
.end method

.method public takeBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bugTitle"    # Ljava/lang/String;
    .param p2, "bugDetail"    # Ljava/lang/String;

    .line 1766
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/BaseWifiDiagnostics;->takeBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    return-void
.end method

.method unwantedNetwork(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 5214
    const v0, 0x20090

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5215
    return-void
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .line 2132
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v0

    .line 2134
    if-eqz p1, :cond_0

    .line 2135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2163
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2161
    :catch_0
    move-exception v1

    goto :goto_2

    .line 2137
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v1, :cond_2

    .line 2138
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_1

    .line 2141
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2142
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2144
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_1

    .line 2148
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2149
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_1

    .line 2153
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_3

    .line 2155
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2156
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 2160
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2162
    goto :goto_3

    .line 2161
    :goto_2
    nop

    .line 2163
    :goto_3
    :try_start_1
    monitor-exit v0

    .line 2164
    return-void

    .line 2163
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCapabilities()V
    .locals 1

    .line 5035
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 5036
    return-void
.end method

.method public updateWifiMetrics()V
    .locals 2

    .line 6511
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateSavedNetworks(Ljava/util/List;)V

    .line 6512
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->updateMetrics()V

    .line 6513
    return-void
.end method
