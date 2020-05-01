.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field private static final CMD_EVALUATE_PRIVATE_DNS:I = 0x8200f

.field private static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x8200d

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static final DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x8200e

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field private static final GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

.field private static final GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

.field private static final HTTP_GOOGLE_NETWORK_URL:Ljava/lang/String; = "http://www.google.com"

.field private static final HTTP_NETWORK_TEST_URL:Ljava/lang/String; = "http://www.baidu.com"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final NO_UID:I = 0x0

.field private static final NUM_VALIDATION_LOG_LINES:I = 0x14

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static final WIFI_DUPLICATE_GATEWAY:Ljava/lang/String; = "wifi_duplicate_gateway"

.field private static mBackupAnotherPortalUrl:Ljava/lang/String;

.field private static final mIsH2Version:Z

.field private static mOpenByBrowserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

.field private final mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private final mCaptivePortalHttpUrl:Ljava/net/URL;

.field private final mCaptivePortalHttpsUrl:Ljava/net/URL;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mCaptivePortalUserAgent:Ljava/lang/String;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field private mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

.field private mHttpChinaUrl:Ljava/net/URL;

.field private mHttpGoogleChinaUrl:Ljava/net/URL;

.field private mHttpPublicChinaUrl:Ljava/net/URL;

.field private mHttpsGoogleChinaUrl:Ljava/net/URL;

.field private mIPv4Gateway:Ljava/net/Inet4Address;

.field private mIPv4Self:Ljava/net/Inet4Address;

.field private mInterfaceName:Ljava/lang/String;

.field protected mIsCaptivePortalCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsChecked:Z

.field private mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetwork:Landroid/net/Network;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mNextFallbackUrlIndex:I

.field private mPrivateDnsProviderHostname:Ljava/lang/String;

.field private mReevaluateToken:I

.field private final mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private mValidations:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "http://conn1.oppomobile.com/generate_204"

    const-string/jumbo v1, "http://conn2.oppomobile.com/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "http://www.noisyfox.cn/generate_204"

    const-string/jumbo v1, "http://captive.v2ex.co/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "http://www.google.cn/generate_204"

    const-string/jumbo v1, "http://developers.google.cn/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "https://www.google.cn/generate_204"

    const-string/jumbo v1, "https://developers.google.cn/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mOpenByBrowserList:Ljava/util/ArrayList;

    .line 147
    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mBackupAnotherPortalUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .line 336
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    sget-object v6, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V

    .line 338
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;
    .param p6, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    .line 137
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    .line 138
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    .line 139
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 272
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 280
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    .line 307
    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    .line 310
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 316
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 317
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 318
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 319
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 320
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 321
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    .line 323
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 325
    new-instance v0, Landroid/util/LocalLog;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 327
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    .line 330
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 332
    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 349
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->setDbg(Z)V

    .line 351
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 352
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 353
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 354
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    .line 355
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 356
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    .line 357
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 358
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 359
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 360
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 362
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getIsCaptivePortalCheckEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getUseHttpsValidation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 372
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 374
    invoke-static {p6, p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 375
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 376
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mOpenByBrowserList:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 382
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 110
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/arp/OPGatewayDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/arp/OPGatewayDetector;)Landroid/net/arp/OPGatewayDetector;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/arp/OPGatewayDetector;

    .line 110
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 110
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 110
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic access$1600()Ljava/util/ArrayList;
    .locals 1

    .line 110
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mOpenByBrowserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2808(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mBackupAnotherPortalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 110
    sput-object p0, Lcom/android/server/connectivity/NetworkMonitor;->mBackupAnotherPortalUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->setPreConditionForGatewayCheck()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->needToCheckGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->probeGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$4004(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mHttpChinaUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mHttpPublicChinaUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$4400()[Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->checkDupMAC()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/ProxyInfo;
    .param p2, "x2"    # Ljava/net/URL;
    .param p3, "x3"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/os/Message;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private checkDupMAC()V
    .locals 7

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the network is not OK, so check the duplicate mac"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->needToCheckGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v0}, Landroid/net/arp/OPGatewayDetector;->hasDupGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2042
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v0}, Landroid/net/arp/OPGatewayDetector;->fetchGatewayMacFromRoute()[B

    move-result-object v0

    .line 2043
    .local v0, "currentMac":[B
    if-nez v0, :cond_0

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentMac is null, replase mac failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void

    .line 2047
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need prepare next MAC and currentMac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v1}, Landroid/net/arp/OPGatewayDetector;->getMacAccount()Ljava/util/List;

    move-result-object v1

    .line 2049
    .local v1, "gatewayList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2050
    const/4 v2, 0x0

    move v3, v2

    .line 2050
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":the gateway\'s mac ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2053
    .end local v3    # "i":I
    :cond_1
    nop

    .line 2053
    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2054
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->isEqualArray([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the new mac ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/net/arp/OPGatewayDetector;->prepareNextAvailbeGateway([B)V

    .line 2057
    goto :goto_2

    .line 2053
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2062
    .end local v0    # "currentMac":[B
    .end local v1    # "gatewayList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private static getCaptivePortalChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1125
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1126
    .local v0, "mDefaultChinaHttpUrl":Ljava/lang/String;
    const-string v1, "captive_portal_china_http_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCaptivePortalGoogleChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1137
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1138
    .local v0, "mGoogleChinaHttpUrl":Ljava/lang/String;
    const-string v1, "captive_portal_google_china_http_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCaptivePortalGoogleChinaHttpsUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1143
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1144
    .local v0, "mGoogleChinaHttpsUrl":Ljava/lang/String;
    const-string v1, "captive_portal_google_china_https_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCaptivePortalPublicChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1131
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1132
    .local v0, "mPublicChinaHttpUrl":Ljava/lang/String;
    const-string v1, "captive_portal_public_china_http_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1113
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    invoke-static {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1118
    const-string v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalServerHttpsUrl()Ljava/lang/String;
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_https_url"

    const-string/jumbo v3, "https://www.google.com/generate_204"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalUserAgent()Ljava/lang/String;
    .locals 4

    .line 1193
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_user_agent"

    const-string v3, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCountryChinaLocal()Z
    .locals 3

    .line 1774
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1775
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1776
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isEqualArray([B[B)Z
    .locals 5
    .param p1, "sourceArray"    # [B
    .param p2, "targetArray"    # [B

    .line 2014
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2015
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 2016
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_0

    .line 2017
    return v1

    .line 2015
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2020
    .end local v2    # "i":I
    :cond_1
    return v0

    .line 2022
    :cond_2
    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method private isSetupWizardCompleted()Z
    .locals 3

    .line 1217
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1218
    return v1

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 1221
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    .line 1220
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 1222
    .local v0, "setupCompleted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupwizard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v2, "completed"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "running"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1223
    return v0
.end method

.method private logNetworkEvent(I)V
    .locals 4
    .param p1, "evtype"    # I

    .line 1911
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1912
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p1}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1913
    return-void
.end method

.method private logValidationProbe(JII)V
    .locals 5
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "probeResult"    # I

    .line 1940
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1941
    .local v0, "transports":[I
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    .line 1942
    .local v1, "isFirstValidation":Z
    new-instance v2, Landroid/net/metrics/ValidationProbeEvent;

    invoke-direct {v2}, Landroid/net/metrics/ValidationProbeEvent;-><init>()V

    .line 1943
    .local v2, "ev":Landroid/net/metrics/ValidationProbeEvent;
    invoke-static {p3, v1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 1944
    iput p4, v2, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 1945
    iput-wide p1, v2, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 1946
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1947
    return-void
.end method

.method private makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 4

    .line 1177
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v3, "captive_portal_fallback_probe_specs"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "settingsValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    return-object v0

    .line 1184
    :cond_0
    invoke-static {v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseCaptivePortalProbeSpecs(Ljava/lang/String;)[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1185
    .end local v1    # "settingsValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback probe specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    return-object v0
.end method

.method private makeCaptivePortalFallbackUrls()[Ljava/net/URL;
    .locals 10

    .line 1150
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ","

    .line 1151
    .local v1, "separator":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v4, "captive_portal_fallback_url"

    const-string/jumbo v5, "http://www.google.com/gen_204"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "firstUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v6, "captive_portal_other_fallback_urls"

    const-string/jumbo v7, "http://play.googleapis.com/generate_204"

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1156
    .local v3, "joinedUrls":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1158
    .local v8, "s":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 1159
    .local v9, "u":Ljava/net/URL;
    if-nez v9, :cond_0

    .line 1160
    goto :goto_1

    .line 1162
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "u":Ljava/net/URL;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1165
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v6, "could not create any url from %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/net/URL;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1168
    .end local v1    # "separator":Ljava/lang/String;
    .end local v2    # "firstUrl":Ljava/lang/String;
    .end local v3    # "joinedUrls":Ljava/lang/String;
    .end local v4    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catch_0
    move-exception v1

    .line 1170
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback URLs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    new-array v0, v0, [Ljava/net/URL;

    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 1808
    if-eqz p1, :cond_0

    .line 1810
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1815
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeLogEvaluationResult(I)V
    .locals 6
    .param p1, "evtype"    # I

    .line 1932
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1934
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1935
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->reset()V

    .line 1937
    .end local v0    # "transports":[I
    :cond_0
    return-void
.end method

.method private needToCheckGateway()Z
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .locals 1
    .param p1, "s"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "r"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 1916
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    if-eqz v0, :cond_1

    .line 1917
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_0

    .line 1918
    const/16 v0, 0x8

    return v0

    .line 1920
    :cond_0
    const/16 v0, 0xa

    return v0

    .line 1923
    :cond_1
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_2

    .line 1924
    const/16 v0, 0x9

    return v0

    .line 1926
    :cond_2
    const/16 v0, 0xb

    return v0
.end method

.method private nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    const/4 v0, 0x0

    return-object v0

    .line 1211
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1212
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .locals 3

    .line 1198
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1199
    const/4 v0, 0x0

    return-object v0

    .line 1201
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1202
    .local v0, "idx":I
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 1203
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 434
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->reportFakeValidateResult()Z

    move-result v0

    const v1, 0x82002

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    return-void
.end method

.method private probeGateway()Z
    .locals 4

    .line 2006
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/arp/OPGatewayDetector;->doDupArp(Ljava/lang/String;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method private reportFakeValidateResult()Z
    .locals 4

    .line 1759
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_should_switch_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1761
    .local v0, "smartWifiEnabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isSetupWizardCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    sget-boolean v3, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    if-eqz v3, :cond_3

    .line 1762
    :cond_2
    return v1

    .line 1763
    :cond_3
    return v2
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "probeType"    # I

    .line 1342
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "host":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsProbe(Ljava/lang/String;)V

    .line 1344
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v1

    return-object v1
.end method

.method private sendDnsProbe(Ljava/lang/String;)V
    .locals 11
    .param p1, "host"    # Ljava/lang/String;

    .line 1349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    return-void

    .line 1353
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1354
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/net/util/Stopwatch;

    invoke-direct {v2}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v2

    .line 1358
    .local v2, "watch":Landroid/net/util/Stopwatch;
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/connectivity/NetworkMonitor;->getAllByName(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 1359
    .local v4, "addresses":[Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1360
    .local v5, "buffer":Ljava/lang/StringBuffer;
    array-length v6, v4

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    .line 1361
    .local v8, "address":Ljava/net/InetAddress;
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    .end local v8    # "address":Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    const/4 v6, 0x1

    .line 1364
    .local v6, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    move-object v4, v7

    .line 1368
    .local v4, "connectInfo":Ljava/lang/String;
    goto :goto_1

    .line 1365
    .end local v4    # "connectInfo":Ljava/lang/String;
    .end local v6    # "result":I
    :catch_0
    move-exception v4

    .line 1366
    .local v4, "e":Ljava/net/UnknownHostException;
    const/4 v6, 0x0

    .line 1367
    .restart local v6    # "result":I
    const-string v4, "FAIL"

    .line 1369
    .local v4, "connectInfo":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v7

    .line 1370
    .local v7, "latency":J
    const-string v5, "%dms %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1371
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v0

    aput-object v4, v9, v3

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1370
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1372
    invoke-direct {p0, v7, v8, v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1373
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 7
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getWifiScansAlwaysAvailableDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    return-void

    .line 1831
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v0, :cond_1

    .line 1832
    return-void

    .line 1835
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1837
    .local v0, "latencyBroadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1891
    return-void

    .line 1839
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1840
    .local v1, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    .line 1848
    const-string v2, "extra_ssid"

    .line 1849
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1848
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1850
    const-string v2, "extra_bssid"

    .line 1851
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 1850
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1854
    :cond_2
    return-void

    .line 1858
    .end local v1    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string v1, "extra_network_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1859
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 1858
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1860
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1861
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v1, :cond_3

    return-void

    .line 1862
    :cond_3
    const/4 v2, 0x0

    .line 1863
    .local v2, "numRegisteredCellInfo":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 1864
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1865
    add-int/lit8 v2, v2, 0x1

    .line 1866
    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    .line 1869
    return-void

    .line 1871
    :cond_4
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_5

    .line 1872
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v5

    .line 1873
    .local v5, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1874
    .end local v5    # "cellId":Landroid/telephony/CellIdentityCdma;
    goto :goto_1

    :cond_5
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_6

    .line 1875
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 1876
    .local v5, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1877
    .end local v5    # "cellId":Landroid/telephony/CellIdentityGsm;
    goto :goto_1

    :cond_6
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_7

    .line 1878
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 1879
    .local v5, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1880
    .end local v5    # "cellId":Landroid/telephony/CellIdentityLte;
    goto :goto_1

    :cond_7
    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_8

    .line 1881
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 1882
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1883
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    goto :goto_1

    .line 1885
    :cond_8
    return-void

    .line 1888
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    :goto_1
    goto :goto_0

    .line 1889
    :cond_a
    nop

    .line 1893
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v2    # "numRegisteredCellInfo":I
    :goto_2
    const-string v1, "extra_connectivity_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1894
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1893
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1895
    const-string v1, "extra_response_received"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1897
    const-string v1, "extra_request_timestamp_ms"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1900
    if-eqz p1, :cond_b

    .line 1901
    const-string v1, "extra_is_captive_portal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1903
    const-string v1, "extra_response_timestamp_ms"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1906
    :cond_b
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1908
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpChinaH2Probes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 13
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpChinaUrl"    # Ljava/net/URL;
    .param p3, "httpPublicChinaUrl"    # Ljava/net/URL;
    .param p4, "httpGoogleChinaUrl"    # Ljava/net/URL;

    move-object v9, p0

    .line 1582
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v10, v0

    .line 1618
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v11, v0

    .line 1619
    .local v11, "httpChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v12, v0

    .line 1620
    .local v12, "httpPublicChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v1, v0

    .line 1623
    .local v1, "httpGoogleChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
    :try_start_0
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->start()V

    .line 1624
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->start()V

    .line 1625
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->start()V

    .line 1626
    const-wide/16 v2, 0xbb8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1633
    nop

    .line 1635
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v2

    .line 1636
    .local v2, "httpChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1637
    .local v3, "httpPublicChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1639
    .local v4, "httpGoogleChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", httpChinaResult result ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", httpPublicChinaResult result ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", httpGoogleChinaResult result ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v2}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 1644
    :cond_0
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    .line 1645
    :cond_1
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v4

    .line 1647
    :cond_2
    invoke-virtual {v2}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    .line 1648
    :cond_3
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v3

    .line 1649
    :cond_4
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v4

    .line 1653
    :cond_5
    :try_start_1
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->join()V

    .line 1654
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1655
    :cond_6
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->join()V

    .line 1656
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1657
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->join()V

    .line 1658
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1659
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1660
    :cond_9
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1661
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1662
    :cond_b
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "Error: http or public http probe wait interrupted!"

    invoke-direct {v9, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1665
    sget-object v5, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v5

    .line 1630
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "httpChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v3    # "httpPublicChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpGoogleChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :catch_1
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error: array out of bound!"

    invoke-direct {v9, v2}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1632
    sget-object v2, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v2

    .line 1627
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 1628
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Error: probes wait interrupted!"

    invoke-direct {v9, v2}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1629
    sget-object v2, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v2
.end method

.method private sendParallelHttpChinaO2Probes(Landroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 11
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpChinaServers"    # [Ljava/lang/String;
    .param p3, "httpsGoogleChinaUrl"    # Ljava/net/URL;

    .line 1672
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1708
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1709
    .local v1, "httpChinaServer1Probe":Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;

    const/4 v4, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1710
    .local v9, "httpChinaServer2Probe":Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
    new-instance v10, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;

    const/4 v4, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, v10

    .line 1713
    .local v2, "httpsChinaServerProbe":Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->start()V

    .line 1714
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->start()V

    .line 1715
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->start()V

    .line 1716
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1723
    nop

    .line 1725
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1726
    .local v3, "httpChinaServer1Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1727
    .local v4, "httpChinaServer2Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v5

    .line 1729
    .local v5, "httpsChinaServerResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpChinaServer1Result result ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1730
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpChinaServer2Result result ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpsChinaServerResult result ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v3

    .line 1734
    :cond_0
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    .line 1735
    :cond_1
    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    .line 1737
    :cond_2
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v3

    .line 1738
    :cond_3
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_4

    return-object v4

    .line 1739
    :cond_4
    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v5

    .line 1742
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->join()V

    .line 1743
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1744
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->join()V

    .line 1745
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1746
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->join()V

    .line 1747
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1748
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1749
    :cond_9
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1750
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1751
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    .line 1752
    :catch_0
    move-exception v6

    .line 1753
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v7, "Error: google http probe wait interrupted!"

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1754
    sget-object v7, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v7

    .line 1720
    .end local v3    # "httpChinaServer1Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpChinaServer2Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v5    # "httpsChinaServerResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 1721
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "Error: array out of bound!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1722
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4

    .line 1717
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 1718
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error: probes wait interrupted!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1719
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4
.end method

.method private sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 10
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpsUrl"    # Ljava/net/URL;
    .param p3, "httpUrl"    # Ljava/net/URL;

    .line 1475
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1508
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1509
    .local v1, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, v9

    .line 1512
    .local v2, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1513
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1514
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1523
    nop

    .line 1525
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1526
    .local v3, "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1528
    .local v4, "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", httpsResult result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", httpResult result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1535
    return-object v4

    .line 1538
    :cond_0
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1543
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v5

    .line 1544
    .local v5, "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v6

    .line 1545
    .local v6, "fallbackUrl":Ljava/net/URL;
    :goto_0
    if-eqz v6, :cond_3

    .line 1546
    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    .line 1547
    .local v7, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1548
    return-object v7

    .line 1553
    .end local v7    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1554
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1555
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    return-object v7

    .line 1557
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1558
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    .line 1559
    :catch_0
    move-exception v7

    .line 1560
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v8, "Error: http or https probe wait interrupted!"

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1561
    sget-object v8, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v8

    .line 1539
    .end local v5    # "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .end local v6    # "fallbackUrl":Ljava/net/URL;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_1
    return-object v3

    .line 1519
    .end local v3    # "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :catch_1
    move-exception v3

    .line 1520
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "Error: array out of bound!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1521
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4

    .line 1515
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 1516
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error: probes wait interrupted!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1517
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4
.end method

.method private setPreConditionForGatewayCheck()V
    .locals 8

    .line 1974
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1976
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1980
    .local v0, "linkproperties":Landroid/net/LinkProperties;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1981
    .local v1, "interfaceName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1982
    .local v2, "ipv4address":Ljava/net/Inet4Address;
    const/4 v3, 0x0

    .line 1984
    .local v3, "ipv4gateway":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 1985
    .local v5, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1986
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    .line 1987
    .local v6, "gateway":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_1

    .line 1988
    move-object v3, v6

    check-cast v3, Ljava/net/Inet4Address;

    .line 1989
    goto :goto_1

    .line 1992
    .end local v5    # "routeInfo":Landroid/net/RouteInfo;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    :cond_1
    goto :goto_0

    .line 1993
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 1994
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 1995
    move-object v2, v5

    check-cast v2, Ljava/net/Inet4Address;

    .line 1996
    goto :goto_3

    .line 1998
    .end local v5    # "address":Ljava/net/InetAddress;
    :cond_3
    goto :goto_2

    .line 1999
    :cond_4
    :goto_3
    iput-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    .line 2000
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    .line 2001
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    .line 2002
    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ipv4gateway = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", IPself ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", interfaceName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return-void

    .line 1977
    .end local v0    # "linkproperties":Landroid/net/LinkProperties;
    .end local v1    # "interfaceName":Ljava/lang/String;
    .end local v2    # "ipv4address":Ljava/net/Inet4Address;
    .end local v3    # "ipv4gateway":Ljava/net/Inet4Address;
    :cond_5
    :goto_4
    return-void
.end method

.method private shallAccountForDupGateway()Z
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v0}, Landroid/net/arp/OPGatewayDetector;->hasDupGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 1781
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1801
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 1799
    :pswitch_1
    const-string v0, "CMD_CAPTIVE_PORTAL_RECHECK"

    goto :goto_0

    .line 1797
    :pswitch_2
    const-string v0, "CMD_LAUNCH_CAPTIVE_PORTAL_APP"

    goto :goto_0

    .line 1795
    :pswitch_3
    const-string v0, "EVENT_PROVISIONING_NOTIFICATION"

    goto :goto_0

    .line 1793
    :pswitch_4
    const-string v0, "CMD_CAPTIVE_PORTAL_APP_FINISHED"

    goto :goto_0

    .line 1791
    :pswitch_5
    const-string v0, "CMD_FORCE_REEVALUATION"

    goto :goto_0

    .line 1789
    :pswitch_6
    const-string v0, "CMD_NETWORK_DISCONNECTED"

    goto :goto_0

    .line 1787
    :pswitch_7
    const-string v0, "CMD_REEVALUATE"

    goto :goto_0

    .line 1785
    :pswitch_8
    const-string v0, "EVENT_NETWORK_TESTED"

    goto :goto_0

    .line 1783
    :pswitch_9
    const-string v0, "CMD_NETWORK_CONNECTED"

    .line 1801
    .local v0, "s":Ljava/lang/String;
    :goto_0
    nop

    .line 1803
    return-object v0

    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "probeType"    # I
    .param p2, "url"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    .line 401
    invoke-static {p1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "probeName":Ljava/lang/String;
    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .locals 1

    .line 415
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public byteArrayToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "a"    # [B

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2029
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 2030
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 2031
    const-string v3, "%02x:"

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2033
    :cond_0
    const-string v3, "%02x"

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2036
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public forceReevaluation(I)V
    .locals 2
    .param p1, "responsibleUid"    # I

    .line 385
    const v0, 0x82008

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 386
    return-void
.end method

.method protected getAllByName(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "host"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1567
    invoke-virtual {p1, p2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getIsCaptivePortalCheckEnabled()Z
    .locals 4

    .line 1092
    const-string v0, "captive_portal_mode"

    .line 1093
    .local v0, "symbol":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1094
    .local v1, "defaultValue":I
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1095
    .local v2, "mode":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getUseHttpsValidation()Z
    .locals 4

    .line 1099
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_use_https"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScansAlwaysAvailableDisabled()Z
    .locals 4

    .line 1103
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method protected isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1229
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v0, :cond_0

    .line 1230
    const-string v0, "Validation disabled."

    invoke-direct {v7, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1231
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1234
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->reportFakeValidateResult()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    const v2, 0x82002

    const/4 v3, 0x0

    iget v4, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v7, v2, v3, v4, v1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1240
    :cond_1
    const/4 v0, 0x0

    .line 1241
    .local v0, "pacUrl":Ljava/net/URL;
    iget-object v8, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 1242
    .local v8, "httpsUrl":Ljava/net/URL;
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 1249
    .local v2, "httpUrl":Ljava/net/URL;
    iget-boolean v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1251
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qualcomm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1252
    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x50c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1254
    .local v3, "res":Ljava/lang/String;
    if-nez v3, :cond_2

    const-string/jumbo v4, "http://connectivitycheck.gstatic.com/generate_204"

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/generate_204"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-direct {v7, v4}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "replace qualcomm server to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1257
    .end local v2    # "httpUrl":Ljava/net/URL;
    .end local v3    # "res":Ljava/lang/String;
    .local v9, "httpUrl":Ljava/net/URL;
    :cond_3
    move-object v9, v2

    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpChinaUrl:Ljava/net/URL;

    .line 1258
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalPublicChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpPublicChinaUrl:Ljava/net/URL;

    .line 1259
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalGoogleChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpGoogleChinaUrl:Ljava/net/URL;

    .line 1260
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalGoogleChinaHttpsUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpsGoogleChinaUrl:Ljava/net/URL;

    .line 1281
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v10

    .line 1282
    .local v10, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v10, :cond_4

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1283
    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1284
    if-nez v0, :cond_4

    .line 1285
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v1

    .line 1290
    :cond_4
    move-object v11, v0

    .line 1290
    .end local v0    # "pacUrl":Ljava/net/URL;
    .local v11, "pacUrl":Ljava/net/URL;
    if-nez v11, :cond_6

    if-eqz v9, :cond_5

    if-eqz v8, :cond_5

    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpChinaUrl:Ljava/net/URL;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpPublicChinaUrl:Ljava/net/URL;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpGoogleChinaUrl:Ljava/net/URL;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpsGoogleChinaUrl:Ljava/net/URL;

    if-nez v0, :cond_6

    .line 1298
    :cond_5
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1301
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1306
    .local v12, "startTime":J
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCaptivePortalUrlBlacklist()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->setCaptivePortalUrlBlacklist(Ljava/util/ArrayList;)V

    .line 1310
    if-eqz v11, :cond_7

    .line 1311
    const/4 v0, 0x3

    invoke-direct {v7, v1, v11, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1311
    .local v0, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_1
    goto :goto_2

    .line 1313
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1314
    sget-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    if-eqz v0, :cond_8

    .line 1315
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpChinaUrl:Ljava/net/URL;

    iget-object v1, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpPublicChinaUrl:Ljava/net/URL;

    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpGoogleChinaUrl:Ljava/net/URL;

    invoke-direct {v7, v10, v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaH2Probes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_1

    .line 1317
    :cond_8
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/connectivity/NetworkMonitor;->mHttpsGoogleChinaUrl:Ljava/net/URL;

    invoke-direct {v7, v10, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaO2Probes(Landroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_1

    .line 1319
    :cond_9
    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v0, :cond_a

    .line 1320
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_1

    .line 1322
    :cond_a
    const/4 v0, 0x1

    invoke-direct {v7, v10, v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1322
    .restart local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_2
    move-object v14, v0

    .line 1325
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .local v14, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1327
    .local v15, "endTime":J
    const/4 v1, 0x1

    .line 1328
    invoke-virtual {v14}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    .line 1327
    move-object v0, v7

    move-wide v3, v12

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1331
    return-object v14
.end method

.method public isPrivateDnsValidationRequired()Z
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isValidationRequired()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public notifyPrivateDnsSettingsChanged(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .locals 1
    .param p1, "newCfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 390
    const v0, 0x8200d

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    .line 392
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 393
    return-void
.end method

.method protected resolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1574
    invoke-static {p1, p2, p3}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 19
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I
    .param p3, "probeSpec"    # Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1382
    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 1383
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v6, 0x257

    .line 1384
    .local v6, "httpResponseCode":I
    const/4 v7, 0x0

    .line 1385
    .local v7, "redirectUrl":Ljava/lang/String;
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v8

    .line 1386
    .local v8, "probeTimer":Landroid/net/util/Stopwatch;
    const/16 v0, -0xbe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v9, v0

    .line 1389
    .local v9, "oldTag":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->shallAccountForDupGateway()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 1390
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    sget-object v10, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2, v10}, Landroid/net/Network;->openConnectionWithoutConnectionPool(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1457
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 1451
    :catch_0
    move-exception v0

    move-object/from16 v17, v8

    goto/16 :goto_3

    .line 1392
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1399
    .end local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    move-object v5, v0

    .line 1399
    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    const/4 v10, 0x3

    if-ne v3, v10, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move v11, v0

    :goto_1
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1400
    const/16 v11, 0x2710

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1401
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1402
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1403
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_2

    .line 1404
    :try_start_3
    const-string v0, "User-Agent"

    iget-object v11, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    invoke-virtual {v5, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1407
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "requestHeader":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1412
    .local v11, "requestTimestamp":J
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move v6, v13

    .line 1413
    const-string/jumbo v13, "location"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v7, v13

    .line 1416
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1418
    .local v13, "responseTimestamp":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    sub-long v7, v13, v11

    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v17, "probeTimer":Landroid/net/util/Stopwatch;
    .local v18, "redirectUrl":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ret="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " request="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " headers="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1418
    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1428
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 1429
    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    .line 1430
    const-string v7, "PAC fetch 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1432
    const/16 v6, 0xcc

    goto :goto_2

    .line 1433
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v7

    const-wide/16 v15, 0x0

    cmp-long v7, v7, v15

    if-nez v7, :cond_4

    .line 1438
    const-string v7, "200 response with Content-length=0 interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1440
    const/16 v6, 0xcc

    goto :goto_2

    .line 1441
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v7

    const-wide/16 v15, -0x1

    cmp-long v7, v7, v15

    if-nez v7, :cond_5

    .line 1444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 1445
    const-string v7, "Empty 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1447
    const/16 v6, 0xcc

    .line 1457
    .end local v0    # "requestHeader":Ljava/lang/String;
    .end local v11    # "requestTimestamp":J
    .end local v13    # "responseTimestamp":J
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 1458
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1460
    :cond_6
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1461
    nop

    .line 1462
    move-object/from16 v7, v18

    goto :goto_4

    .line 1457
    :catchall_1
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_5

    .line 1451
    :catch_1
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_3

    .line 1457
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v7

    .line 1457
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    goto :goto_5

    .line 1451
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_2
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 1451
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    goto :goto_3

    .line 1457
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_3
    move-exception v0

    .line 1457
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    goto :goto_5

    .line 1451
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_3
    move-exception v0

    move-object/from16 v17, v8

    .line 1452
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    :goto_3
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Probe failed with exception "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v3, v2, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1453
    nop

    .line 1457
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_7

    .line 1458
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1460
    :cond_7
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1461
    nop

    .line 1462
    :goto_4
    move-object/from16 v8, v17

    invoke-virtual {v8}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v10

    .line 1462
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    invoke-direct {v1, v10, v11, v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1464
    if-nez v4, :cond_8

    .line 1465
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v6, v7, v10}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1467
    :cond_8
    invoke-virtual {v4, v6, v7}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1457
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_4
    move-exception v0

    move-object/from16 v8, v17

    .line 1457
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :goto_5
    if-eqz v5, :cond_9

    .line 1458
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1460
    :cond_9
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
