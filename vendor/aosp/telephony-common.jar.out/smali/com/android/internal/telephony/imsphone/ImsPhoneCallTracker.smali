.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    }
.end annotation


# static fields
.field private static final AC_END:I = 0x3ee

.field private static final AC_START:I = 0x3ed

.field private static final DBG:Z = true

.field private static final DIR_MO:I = 0x3ef

.field private static final DIR_MT:I = 0x3f0

.field private static final EVENT_CHECK_FOR_WIFI_HANDOVER:I = 0x19

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x17

.field private static final EVENT_DIAL_PENDINGMO:I = 0x14

.field private static final EVENT_EXIT_ECBM_BEFORE_PENDINGMO:I = 0x15

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x12

.field private static final EVENT_ON_FEATURE_CAPABILITY_CHANGED:I = 0x1a

.field private static final EVENT_RESUME_BACKGROUND:I = 0x13

.field private static final EVENT_SUPP_SERVICE_INDICATION:I = 0x1b

.field private static final EVENT_VT_DATA_USAGE_UPDATE:I = 0x16

.field private static final FORCE_VERBOSE_STATE_LOGGING:Z = false

.field private static final HANDOVER_TO_WIFI_TIMEOUT_MS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

.field private static final SVC_CALL:I = 0x3ea

.field private static final SVC_MMS:I = 0x3ec

.field private static final SVC_REG:I = 0x3e9

.field private static final SVC_SMS:I = 0x3eb

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final UST_CONSTANT:I = 0x3e8

.field private static final UST_DBG:Z

.field private static final VERBOSE_STATE_LOGGING:Z

.field static final VERBOSE_STATE_TAG:Ljava/lang/String; = "IPCTState"

.field private static final VOWIFI_EVENT_INTENT_UST:Ljava/lang/String; = "com.tmobile.comm.METRIC"

.field private static final VOWIFI_EVENT_PERMISSION_UST:Ljava/lang/String; = "com.tmobile.comm.RECEIVE_METRICS"

.field private static final VOWIFI_REGISTER_PROPERTY:Ljava/lang/String; = "gsm.ims.register.wifi"


# instance fields
.field private mAllowAddCallDuringVideoCall:Z

.field private mAllowEmergencyVideoCalls:Z

.field private mAllowHoldingVideoCall:Z

.field private mAlwaysPlayRemoteHoldTone:Z

.field public mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCallExpectedToResume:Lcom/android/ims/ImsCall;

.field private mCarrierConfigLoaded:Z

.field private mClirMode:I

.field private final mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDesiredMute:Z

.field private mDropVideoCallWhenAnsweringAudioCall:Z

.field public mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field public mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mHasPerformedStartOfCallHandover:Z

.field private mIgnoreDataEnabledChangedForVideoCalls:Z

.field private mIgnoreResetUtCapability:Z

.field private mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private final mImsCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

.field private mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

.field private mImsFeatureEnabled:[Z

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

.field private mImsReasonCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

.field private mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

.field private mIsDataEnabled:Z

.field private mIsInEmergencyCall:Z

.field private mIsMonitoringConnectivity:Z

.field private mIsViLteDataMetered:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotifyHandoverVideoFromLTEToWifi:Z

.field private mNotifyHandoverVideoFromWifiToLTE:Z

.field private mNotifyVtHandoverToWifiFail:Z

.field private mOnHoldToneId:I

.field private mOnHoldToneStarted:Z

.field private mPendingCallVideoState:I

.field private mPendingIntentExtras:Landroid/os/Bundle;

.field private mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private mPendingUssd:Landroid/os/Message;

.field mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

.field private mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

.field private mShouldUpdateImsConfigOnDisconnect:Z

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mSupportDowngradeVtToAudio:Z

.field private mSupportPauseVideo:Z

.field private mSwitchingFgAndBgCalls:Z

.field private mSyncHold:Ljava/lang/Object;

.field private mTreatDowngradedVideoCallsAsVideoCalls:Z

.field private mUssdSession:Lcom/android/ims/ImsCall;

.field private mUtInterface:Lcom/android/ims/ImsUtInterface;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private final mVtDataUsageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mVtDataUsageSnapshot:Landroid/net/NetworkStats;

.field private volatile mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

.field private pendingCallClirMode:I

.field private pendingCallInEcm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 149
    const-string v0, "IPCTState"

    .line 150
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    .line 365
    const-string v0, "persist.vendor.radio.ust.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    .line 432
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    .line 434
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 436
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 438
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b2

    const/16 v3, 0x67

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 440
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x4b3

    const/16 v4, 0x6a

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 442
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6b

    const/16 v5, 0x4b4

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 444
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6c

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6f

    const/16 v5, 0x4b5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x70

    const/16 v5, 0x4b6

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 450
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x79

    const/16 v5, 0x4b7

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 452
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7a

    const/16 v5, 0x4b8

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 454
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7b

    const/16 v5, 0x4b9

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 456
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7c

    const/16 v5, 0x4ba

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 458
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x83

    const/16 v5, 0x4bb

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 460
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x84

    const/16 v5, 0x4bc

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 462
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x8d

    const/16 v5, 0x4bd

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 464
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x8f

    const/16 v5, 0x4be

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 466
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x90

    const/16 v5, 0x4bf

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 468
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x91

    const/16 v5, 0x4c0

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 470
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x92

    const/16 v5, 0x4c1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 472
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x93

    const/16 v5, 0x4c2

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 474
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x94

    const/16 v5, 0x4c3

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 476
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x95

    const/16 v5, 0x4c4

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 478
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xc9

    const/16 v5, 0x4c5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 480
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xca

    const/16 v5, 0x4c6

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 482
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xcb

    const/16 v5, 0x4c7

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 484
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xf1

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 486
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x514

    const/16 v5, 0x141

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 488
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14b

    const/16 v6, 0x51e

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 490
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14c

    const/16 v6, 0x51f

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 492
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14d

    const/16 v6, 0x520

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 494
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14e

    const/16 v6, 0x521

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 496
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14f

    const/16 v6, 0x522

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 498
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x150

    const/16 v6, 0x523

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 500
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x151

    const/16 v6, 0x524

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x152

    const/16 v6, 0x525

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 504
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x153

    const/16 v6, 0x526

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 506
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x154

    const/16 v6, 0x527

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 508
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x155

    const/16 v6, 0x528

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 510
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x156

    const/16 v6, 0x529

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 512
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x532

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 514
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x160

    const/16 v6, 0x533

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 516
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x161

    const/16 v6, 0x534

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 518
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x162

    const/16 v6, 0x535

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 520
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x169

    const/16 v6, 0x53c

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 522
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x16a

    const/16 v6, 0x53d

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 524
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x16b

    const/16 v6, 0x53e

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 526
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x16c

    const/16 v6, 0x53f

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 528
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x578

    const/16 v6, 0x191

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 530
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v6, 0x579

    const/16 v7, 0x192

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 532
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v7, 0x57a

    const/16 v8, 0x193

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 534
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v8, 0x57b

    const/16 v9, 0x194

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 536
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v9, 0x5dc

    const/16 v10, 0x1f5

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 538
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v10, 0x5dd

    const/16 v11, 0x1f6

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 540
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v11, 0x5de

    const/16 v12, 0x1f7

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 542
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v12, 0x5df

    const/16 v13, 0x1f8

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 544
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v13, 0x5e0

    const/16 v14, 0x1f9

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 546
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x5e1

    const/16 v15, 0x1fa

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 548
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v15, 0x1fe

    const/16 v14, 0x5e6

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 550
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x321

    const/16 v15, 0x708

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 552
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x322

    const/16 v15, 0x709

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 554
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x323

    const/16 v15, 0x70a

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 556
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x324

    const/16 v15, 0x70b

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 558
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x335

    const/16 v15, 0x70c

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 560
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x385

    const/16 v15, 0x76c

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 562
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x386

    const/16 v15, 0x76d

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 564
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x44c

    const/16 v15, 0x7d0

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 566
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f6

    const/16 v15, 0x834

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 568
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f7

    const/16 v15, 0x835

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 570
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f8

    const/16 v15, 0x836

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 572
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x8fc

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 574
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8fd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 576
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8fe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 578
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x960

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 580
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 582
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c5

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 584
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c6

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 586
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c7

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 588
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57c

    const/16 v2, 0x9c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 590
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57d

    const/16 v2, 0x9c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 592
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57e

    const/16 v2, 0x9ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 594
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57f

    const/16 v2, 0x9cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 596
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf7

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 598
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf9

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 600
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 602
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 604
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfc

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 606
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x5e1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 608
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e2

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 610
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e3

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 612
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e4

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 614
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e5

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 616
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e6

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 618
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e7

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 620
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e8

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 622
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e9

    const/16 v2, 0x105

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 624
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 626
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf001

    const v2, 0xf001

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 628
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf002

    const v2, 0xf002

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 630
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf003

    const v2, 0xf003

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 632
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf004

    const v2, 0xf004

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 634
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf005

    const v2, 0xf005

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 636
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf006

    const v2, 0xf006

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 638
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf007

    const v2, 0xf007

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 640
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf008

    const v2, 0xf008

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 642
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf009

    const v2, 0xf009

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 644
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00a

    const v2, 0xf00a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 646
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00b

    const v2, 0xf00b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 648
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00c

    const v2, 0xf00c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 650
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00d

    const v2, 0xf00d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 652
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00e

    const v2, 0xf00e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 654
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00f

    const v2, 0xf00f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 656
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 732
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 152
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 161
    const/4 v1, 0x6

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    .line 164
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    .line 252
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 279
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    .line 309
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 310
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 312
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "RG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 313
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "FG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 315
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "BG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 317
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "HO"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    .line 323
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 324
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 326
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 330
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    .line 332
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    .line 333
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 337
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 338
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 339
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 341
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 346
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 348
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 349
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 354
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 355
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 356
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 357
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 358
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 359
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 361
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    .line 395
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 401
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 414
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 421
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 427
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 664
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 672
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 680
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPerformedStartOfCallHandover:Z

    .line 687
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 696
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    .line 708
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 713
    sget-object v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;->INSTANCE:Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    .line 721
    new-instance v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$j007jv8ZzpH3GXLLwqHDShCqh70;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$j007jv8ZzpH3GXLLwqHDShCqh70;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    .line 2305
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 3010
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    .line 3072
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 3124
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    .line 3138
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    .line 3155
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

    .line 733
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 735
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 737
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 738
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 741
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    .line 743
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/16 v4, 0x17

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/internal/telephony/Phone;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 747
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 748
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 749
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 748
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 752
    .local v3, "currentTime":J
    new-instance v5, Landroid/net/NetworkStats;

    invoke-direct {v5, v3, v4, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 753
    new-instance v5, Landroid/net/NetworkStats;

    invoke-direct {v5, v3, v4, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 755
    new-instance v1, Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v6

    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-direct {v1, v5, v6, v7}, Lcom/android/ims/ImsManager$Connector;-><init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    .line 768
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 769
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isRegisterOnVowifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsManager;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->scheduleHandoverCheck()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startListeningForCalls()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopListeningForCalls()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "x3"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPerformedStartOfCallHandover:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPerformedStartOfCallHandover:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialPendingMO()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setRegisterOnVowifi(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/android/ims/ImsCall;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "x2"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method private declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    monitor-enter p0

    .line 1997
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 2000
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    :cond_0
    monitor-exit p0

    return-void

    .line 1996
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw p1
.end method

.method private addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 4180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4181
    return-object p2

    .line 4184
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 4185
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 4186
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: addRttAttributeIfRequired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 4188
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4187
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4191
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4193
    :cond_1
    return-object p2
.end method

.method private cacheCarrierConfiguration(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1145
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1146
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1147
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1155
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v2, :cond_1

    .line 1156
    const-string v3, "cacheCarrierConfiguration: Empty carrier config."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1157
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 1158
    return-void

    .line 1160
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 1162
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfigCache(Landroid/os/PersistableBundle;)V

    .line 1163
    return-void

    .line 1148
    .end local v2    # "carrierConfig":Landroid/os/PersistableBundle;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheCarrierConfiguration: No carrier config service found or not active subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1150
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 1151
    return-void
.end method

.method private canAddVideoCallDuringImsAudioCall(I)Z
    .locals 5
    .param p1, "videoState"    # I

    .line 1573
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1574
    return v1

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1578
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 1579
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1582
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1583
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 1584
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1588
    .local v2, "isImsAudioCallActiveOrHolding":Z
    :goto_0
    if-eqz v2, :cond_5

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    nop

    :cond_5
    :goto_1
    return v1
.end method

.method private cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callSubject"    # Ljava/lang/String;

    .line 3593
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3594
    return-object p1

    .line 3598
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3599
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3601
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_1

    .line 3602
    return-object p1

    .line 3605
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3607
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_2

    .line 3608
    return-object p1

    .line 3612
    :cond_2
    const-string v2, "carrier_instant_lettering_invalid_chars_string"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3614
    .local v2, "invalidCharacters":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3615
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3619
    :cond_3
    const-string v3, "carrier_instant_lettering_escaped_chars_string"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3621
    .local v3, "escapedCharacters":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3622
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3624
    :cond_4
    return-object p1
.end method

.method private dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V
    .locals 17
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1252
    move-object/from16 v3, p4

    if-nez v2, :cond_0

    .line 1253
    return-void

    .line 1256
    :cond_0
    const/4 v0, 0x0

    .line 1257
    .local v0, "isConferenceUri":Z
    const/4 v4, 0x0

    .line 1259
    .local v4, "isSkipSchemaParsing":Z
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1260
    const-string v6, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1262
    const-string v6, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1267
    .end local v0    # "isConferenceUri":Z
    .local v4, "isConferenceUri":Z
    .local v6, "isSkipSchemaParsing":Z
    :cond_1
    move v6, v4

    move v4, v0

    const-wide/16 v7, 0x1f4

    const/16 v9, 0x12

    if-nez v4, :cond_3

    if-nez v6, :cond_3

    .line 1268
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x4e

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 1271
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1272
    invoke-virtual {v1, v9, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1273
    return-void

    .line 1277
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1279
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/Phone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    .line 1280
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v10

    :goto_0
    move v11, v0

    .line 1282
    .local v11, "serviceType":I
    invoke-static/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v12

    .line 1284
    .local v12, "callType":I
    move/from16 v13, p3

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1287
    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v5

    .line 1288
    .local v0, "callees":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5, v11, v12}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 1289
    .local v5, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v14, "oir"
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v15, p2

    :try_start_1
    invoke-virtual {v5, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1290
    const-string v14, "isConferenceUri"

    invoke-virtual {v5, v14, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1295
    if-eqz v3, :cond_8

    .line 1296
    const-string v14, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1297
    const-string v14, "DisplayText"

    const-string v7, "android.telecom.extra.CALL_SUBJECT"

    .line 1298
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1297
    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1304
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v10, v7, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1307
    :cond_6
    const-string v7, "CallPull"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1308
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v8, "CallPull"

    const-string v14, "CallPull"

    .line 1309
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1308
    invoke-virtual {v7, v8, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    const-string v7, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1312
    .local v7, "dialogId":I
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsPulledCall(Z)V

    .line 1313
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPulledDialogId(I)V

    .line 1317
    .end local v7    # "dialogId":I
    :cond_7
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v8, "OemCallExtras"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1325
    :cond_8
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setRttModeBasedOnOperator(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    move-object v5, v7

    .line 1326
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v7, v5, v0, v8}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v7

    .line 1327
    .local v7, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 1329
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v10

    .line 1330
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v14

    .line 1329
    invoke-virtual {v8, v10, v14}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1332
    invoke-direct {v1, v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 1333
    iget-boolean v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V

    .line 1334
    iget-boolean v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowHoldingVideoCall(Z)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "callees":[Ljava/lang/String;
    .end local v5    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v7    # "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_4

    .line 1344
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1340
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1335
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1344
    :catch_3
    move-exception v0

    move/from16 v15, p2

    .line 1345
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialInternal: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_5

    .line 1340
    :catch_4
    move-exception v0

    move/from16 v15, p2

    :goto_2
    goto :goto_4

    .line 1335
    :catch_5
    move-exception v0

    move/from16 v15, p2

    .line 1336
    .local v0, "e":Lcom/android/ims/ImsException;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialInternal : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1337
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1338
    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v9, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1339
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1346
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_4
    nop

    .line 1348
    :goto_5
    return-void
.end method

.method private dialPendingMO()V
    .locals 3

    .line 2293
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v0

    .line 2294
    .local v0, "isPhoneInEcmMode":Z
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v1

    .line 2295
    .local v1, "isEmergencyNumber":Z
    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2298
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2296
    :cond_1
    :goto_0
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 2300
    :goto_1
    return-void
.end method

.method private downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 4
    .param p1, "reasonCode"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3926
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3927
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_2

    .line 3928
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-nez v1, :cond_0

    .line 3935
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->modifyVideoCall(Lcom/android/ims/ImsCall;I)V

    goto :goto_0

    .line 3936
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x57f

    if-eq p1, v1, :cond_1

    .line 3939
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 3940
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->pauseVideo(I)V

    goto :goto_0

    .line 3944
    :cond_1
    const/16 v1, 0x1f5

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsCall;->terminate(II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3947
    goto :goto_0

    .line 3945
    :catch_0
    move-exception v1

    .line 3946
    .local v1, "ie":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t terminate call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 3950
    .end local v1    # "ie":Lcom/android/ims/ImsException;
    :cond_2
    :goto_0
    return-void
.end method

.method private dumpState()V
    .locals 4

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ringing call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1679
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1680
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1683
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Foreground call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1685
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1686
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1687
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1690
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1692
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1693
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1697
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    return-void
.end method

.method private escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "toEscape"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 3636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3637
    .local v0, "escaped":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 3638
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3639
    const-string v5, "\\"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3641
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3637
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3644
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    monitor-enter p0

    .line 1968
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1969
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 1970
    monitor-exit p0

    return-object v1

    .line 1972
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    goto :goto_0

    .line 1973
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1967
    .end local p1    # "imsCall":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw p1
.end method

.method private getImsManagerIsNullException()Lcom/android/ims/ImsException;
    .locals 3

    .line 3677
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "no ims manager"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 799
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 800
    return v0

    .line 805
    :cond_0
    nop

    .line 807
    .local v0, "uid":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 810
    goto :goto_0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package uid. pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 811
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method private getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2277
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v1

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private handleDataEnabledChange(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reasonCode"    # I

    .line 3888
    if-nez p1, :cond_1

    .line 3892
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3893
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 3894
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDataEnabledChange - downgrading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3896
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3898
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_0
    goto :goto_0

    .line 3899
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v0, :cond_4

    .line 3901
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3904
    .restart local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDataEnabledChange - resuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3906
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->wasVideoPausedFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3909
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->resumeVideo(I)V

    .line 3911
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_2
    goto :goto_1

    .line 3912
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 3914
    :cond_4
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 2
    .param p1, "action"    # I

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 1239
    packed-switch p1, :pswitch_data_0

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEcmTimer, unsupported action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1241
    :pswitch_0
    goto :goto_0

    .line 1243
    :pswitch_1
    nop

    .line 1247
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 23
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-object/from16 v13, p0

    .line 4060
    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v15

    .line 4064
    .local v15, "tmpIsVideoCallEnabled":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    .line 4065
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v0, "handleFeatureCapabilityChanged: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4068
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0, v14}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    iput-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 4070
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v11

    .line 4071
    .local v11, "isVideoEnabled":Z
    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eq v15, v11, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move v8, v0

    .line 4073
    .local v8, "isVideoEnabledStatechanged":Z
    const-string v0, " isVideoEnabledStateChanged="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4077
    if-eqz v8, :cond_1

    .line 4078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFeatureCapabilityChanged - notifyForVideoCapabilityChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4080
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 4083
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFeatureCapabilityChanged: isVolteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoCallEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVowifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUtEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4086
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4093
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isRegisterOnVowifi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4094
    const-string v0, "Register on Vowifi"

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4095
    invoke-direct {v13, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setRegisterOnVowifi(Z)V

    .line 4096
    const/16 v1, 0x3e9

    const/16 v2, 0x3ed

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, ""

    move-object v0, v13

    move/from16 v21, v8

    move/from16 v8, v16

    .end local v8    # "isVideoEnabledStatechanged":Z
    .local v21, "isVideoEnabledStatechanged":Z
    move/from16 v16, v9

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v17, v11

    move/from16 v11, v19

    .end local v11    # "isVideoEnabled":Z
    .local v17, "isVideoEnabled":Z
    move-object/from16 v18, v12

    move-object/from16 v12, v20

    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .local v18, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVowifiEventBroadcastUst(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIIILjava/lang/String;)V

    goto :goto_1

    .line 4097
    .end local v17    # "isVideoEnabled":Z
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "isVideoEnabledStatechanged":Z
    .restart local v8    # "isVideoEnabledStatechanged":Z
    .restart local v11    # "isVideoEnabled":Z
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    move/from16 v21, v8

    move/from16 v16, v9

    move/from16 v17, v11

    move-object/from16 v18, v12

    .end local v8    # "isVideoEnabledStatechanged":Z
    .end local v11    # "isVideoEnabled":Z
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "isVideoEnabled":Z
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    .restart local v21    # "isVideoEnabledStatechanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isRegisterOnVowifi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4098
    const-string v0, "Deregister on Vowifi"

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4099
    const/4 v12, 0x0

    invoke-direct {v13, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setRegisterOnVowifi(Z)V

    .line 4100
    const/16 v1, 0x3e9

    const/16 v2, 0x3ee

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v19, ""

    move-object v0, v13

    move/from16 v20, v12

    move-object/from16 v12, v19

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVowifiEventBroadcastUst(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIIILjava/lang/String;)V

    goto :goto_2

    .line 4104
    :cond_3
    :goto_1
    const/16 v20, 0x0

    :goto_2
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v1

    aput-boolean v1, v0, v20

    .line 4105
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isViLteEnabled()Z

    move-result v1

    aput-boolean v1, v0, v16

    .line 4106
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 4107
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isViWifiEnabled()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 4108
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUTLteEnabled()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 4109
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUTWifiEnabled()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 4110
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged([Z)V

    .line 4113
    iget-object v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v2

    iget-object v3, v13, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 4115
    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pollCallsWhenSafe()V

    .line 1668
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .line 1615
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1619
    return-void
.end method

.method private isPhoneInEcbMode()Z
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRegisterOnVowifi()Z
    .locals 2

    .line 4228
    const-string v0, "gsm.ims.register.wifi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 5

    .line 3978
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3979
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3980
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3981
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3982
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3983
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    nop

    :cond_0
    return v1

    .line 3986
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    return v1
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 714
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private maybeNotifyDataDisabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reasonCode"    # I

    .line 3853
    if-nez p1, :cond_2

    .line 3857
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3858
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 3859
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3860
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3866
    const/16 v3, 0x57e

    const/4 v4, 0x0

    if-ne p2, v3, :cond_0

    .line 3867
    const-string v3, "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3869
    :cond_0
    const/16 v3, 0x57d

    if-ne p2, v3, :cond_1

    .line 3870
    const-string v3, "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3875
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_1
    :goto_1
    goto :goto_0

    .line 3877
    :cond_2
    return-void
.end method

.method private maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 2060
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    .line 2061
    .local v0, "connVideoProvider":Landroid/telecom/Connection$VideoProvider;
    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2066
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    goto :goto_0

    .line 2067
    :catch_0
    move-exception v1

    .line 2068
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeSetVideoCallProvider: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2070
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2062
    :cond_1
    :goto_1
    return-void
.end method

.method private modifyVideoCall(Lcom/android/ims/ImsCall;I)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "newVideoState"    # I

    .line 3784
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 3785
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 3786
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 3787
    .local v1, "oldVideoState":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3788
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 3792
    .end local v1    # "oldVideoState":I
    :cond_0
    return-void
.end method

.method private notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p2, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 3773
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3774
    .local v1, "listener":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;->onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 3775
    .end local v1    # "listener":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    goto :goto_0

    .line 3776
    :cond_0
    return-void
.end method

.method private onDataEnabledChanged(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 3806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3808
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 3810
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    if-nez v0, :cond_1

    .line 3811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - carrier policy indicates that data is not metered for ViLTE calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3813
    return-void

    .line 3818
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3819
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 3820
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    nop

    .line 3821
    .local v2, "isVideoEnabled":Z
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoEnabled(Z)V

    .line 3822
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "isVideoEnabled":Z
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_1

    .line 3825
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 3826
    const/16 v0, 0x57d

    .local v0, "reasonCode":I
    :goto_3
    goto :goto_4

    .line 3827
    .end local v0    # "reasonCode":I
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 3828
    const/16 v0, 0x57e

    goto :goto_3

    .line 3831
    :cond_6
    const/16 v0, 0x57e

    .line 3836
    .restart local v0    # "reasonCode":I
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeNotifyDataDisabled(ZI)V

    .line 3838
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleDataEnabledChange(ZI)V

    .line 3842
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    if-eqz v1, :cond_7

    .line 3846
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_7

    .line 3847
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 3850
    :cond_7
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2010
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 2011
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallStateChange state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ignoreState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2020
    if-nez p1, :cond_0

    return-void

    .line 2022
    :cond_0
    const/4 v0, 0x0

    .line 2023
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 2025
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_1

    .line 2027
    return-void

    .line 2035
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 2036
    if-eqz p4, :cond_2

    .line 2037
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    .line 2038
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 2040
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 2041
    return-void

    .line 2044
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    .line 2045
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_5

    .line 2046
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 2048
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2049
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2052
    :cond_5
    if-eqz v0, :cond_7

    .line 2053
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v2, v3, :cond_6

    return-void

    .line 2054
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 2055
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 2057
    :cond_7
    return-void
.end method

.method private registerForConnectivityChanges()V
    .locals 6

    .line 3994
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3997
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3998
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3999
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 4000
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "registerForConnectivityChanges"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 4002
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 4003
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4004
    .local v3, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    .line 4005
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4006
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 4008
    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v3    # "builder":Landroid/net/NetworkRequest$Builder;
    :cond_1
    return-void

    .line 3995
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    monitor-enter p0

    .line 1977
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1979
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_2

    .line 1980
    const/4 v0, 0x0

    .line 1982
    .local v0, "isEmergencyCallInList":Z
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1983
    .local v2, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1984
    const/4 v0, 0x1

    .line 1985
    goto :goto_1

    .line 1987
    .end local v2    # "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    goto :goto_0

    .line 1989
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1990
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 1991
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    .end local v0    # "isEmergencyCallInList":Z
    :cond_2
    monitor-exit p0

    return-void

    .line 1976
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw p1
.end method

.method private resetImsCapabilities()V
    .locals 3

    .line 3953
    const-string v0, "Resetting Capabilities..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 3956
    .local v0, "tmpIsVideoCallEnabled":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    if-eqz v1, :cond_0

    .line 3959
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 3961
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 3963
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    goto :goto_0

    .line 3966
    :cond_0
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 3968
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v1

    .line 3969
    .local v1, "isVideoEnabled":Z
    if-eq v0, v1, :cond_1

    .line 3970
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 3972
    :cond_1
    return-void
.end method

.method private resetImsFeatureEnabledArray()V
    .locals 3

    .line 856
    const-string v0, "resetImsFeatureEnabledArray"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 858
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    aput-boolean v0, v2, v1

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged([Z)V

    .line 860
    return-void
.end method

.method private retryGetImsService()V
    .locals 1

    .line 3552
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3553
    return-void

    .line 3556
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 3557
    return-void
.end method

.method private scheduleHandoverCheck()V
    .locals 5

    .line 4033
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 4034
    .local v0, "fgCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 4035
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 4036
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4040
    :cond_0
    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4041
    const-string v3, "ImsPhoneCallTracker"

    const-string v4, "scheduleHandoverCheck: schedule"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4045
    :cond_1
    return-void

    .line 4037
    :cond_2
    :goto_0
    return-void
.end method

.method private setRegisterOnVowifi(Z)V
    .locals 2
    .param p1, "regState"    # Z

    .line 4232
    const-string v0, "gsm.ims.register.wifi"

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    return-void
.end method

.method private setRttModeBasedOnOperator(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4159
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v0

    .line 4165
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: setRttModeBasedOnOperator mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4167
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4168
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4169
    return-object p1

    .line 4172
    :cond_1
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4173
    return-object p1

    .line 4160
    .end local v0    # "mode":I
    :cond_2
    :goto_0
    return-object p1
.end method

.method private setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3561
    nop

    .line 3562
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 3563
    .local v0, "imsVideoCallProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v0, :cond_1

    .line 3565
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3568
    .local v1, "useVideoPauseWorkaround":Z
    new-instance v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {v2, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    .line 3570
    .local v2, "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    if-eqz v1, :cond_0

    .line 3571
    invoke-virtual {v2, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setUseVideoPauseWorkaround(Z)V

    .line 3573
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 3574
    const/16 v3, 0x16

    .line 3575
    invoke-virtual {v2, p0, v3, p2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3576
    invoke-virtual {v2, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    .line 3578
    .end local v1    # "useVideoPauseWorkaround":Z
    .end local v2    # "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    :cond_1
    return-void
.end method

.method private shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 8
    .param p1, "activeCall"    # Lcom/android/ims/ImsCall;
    .param p2, "incomingCall"    # Lcom/android/ims/ImsCall;

    .line 3712
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 3716
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    if-nez v1, :cond_1

    .line 3717
    return v0

    .line 3720
    :cond_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    if-eqz v1, :cond_2

    .line 3721
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->wasVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 3722
    .local v1, "isActiveCallVideo":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    .line 3723
    .local v3, "isActiveCallOnWifi":Z
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 3724
    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v0

    .line 3725
    .local v4, "isVoWifiEnabled":Z
    :goto_2
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v5

    xor-int/2addr v5, v2

    .line 3726
    .local v5, "isIncomingCallAudio":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldDisconnectActiveCallOnAnswer : isActiveCallVideo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isActiveCallOnWifi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isIncomingCallAudio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isVowifiEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3730
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 3713
    .end local v1    # "isActiveCallVideo":Z
    .end local v3    # "isActiveCallOnWifi":Z
    .end local v4    # "isVoWifiEnabled":Z
    .end local v5    # "isIncomingCallAudio":Z
    :cond_6
    :goto_3
    return v0
.end method

.method private shouldDisconnectActiveCallOnDial(Z)Z
    .locals 4
    .param p1, "isEmergencyNumber"    # Z

    .line 3681
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3682
    return v1

    .line 3685
    :cond_0
    const/4 v0, 0x0

    .line 3686
    .local v0, "isActiveVideoCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 3687
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 3688
    .local v2, "activeImsCall":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_1

    .line 3689
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v0

    .line 3693
    .end local v2    # "activeImsCall":Lcom/android/ims/ImsCall;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method private shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "isEmergency"    # Z
    .param p2, "number"    # Ljava/lang/String;

    .line 1109
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p2, v3, v0

    invoke-virtual {v1, p1, v3}, Lcom/android/ims/ImsManager;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result v1

    .line 1112
    .local v1, "processCallResult":I
    const-string v3, "ImsPhoneCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldProcessCall: number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ImsPhoneCallTracker"

    invoke-static {v5, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    nop

    .line 1121
    nop

    .line 1120
    nop

    .line 1122
    packed-switch v1, :pswitch_data_0

    .line 1132
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "shouldProcessCall returned unknown result."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v0

    .line 1128
    :pswitch_0
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "shouldProcessCall: place over CSFB instead."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return v0

    .line 1125
    :pswitch_1
    return v2

    .line 1115
    .end local v1    # "processCallResult":I
    :cond_0
    :try_start_1
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "ImsManager unavailable, shouldProcessCall returning false."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1116
    return v0

    .line 1118
    :catch_0
    move-exception v1

    .line 1119
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "ImsService unavailable, shouldProcessCall returning false."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startListeningForCalls()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 815
    const-string v0, "startListeningForCalls"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->open(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setConfigListener(Lcom/android/ims/ImsConfigListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsEcbmStateListener()Lcom/android/ims/ImsEcbmStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 831
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    const/4 v2, 0x0

    .line 830
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 834
    .local v0, "mPreferredTtyMode":I
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;

    move-result-object v1

    .line 837
    .local v1, "multiEndpoint":Lcom/android/ims/ImsMultiEndpoint;
    if-eqz v1, :cond_1

    .line 838
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 839
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    move-result-object v2

    .line 838
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 843
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    .line 844
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v2, :cond_2

    .line 845
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    const/16 v4, 0x1b

    invoke-interface {v2, p0, v4, v3}, Lcom/android/ims/ImsUtInterface;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 849
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    if-eqz v2, :cond_3

    .line 850
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 852
    :cond_3
    return-void
.end method

.method private stopListeningForCalls()V
    .locals 3

    .line 864
    const-string v0, "stopListeningForCalls"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resetImsCapabilities()V

    .line 867
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resetImsFeatureEnabledArray()V

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->removeConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "stopListeningForCalls: unable to remove config callback."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->close()V

    .line 878
    :cond_0
    return-void
.end method

.method private switchAfterConferenceSuccess()V
    .locals 2

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAfterConferenceSuccess fg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1430
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1433
    const-string v0, "switchAfterConferenceSuccess"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1436
    :cond_0
    return-void
.end method

.method private transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 3189
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3190
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3191
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v1, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 3192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state before handover is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3193
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 3195
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3196
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    goto :goto_1

    .line 3198
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3200
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3201
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3202
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 3204
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3205
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3206
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 3207
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_2

    .line 3209
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call is alive and state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3211
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3213
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3214
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3215
    return-void
.end method

.method private unregisterForConnectivityChanges()V
    .locals 3

    .line 4015
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4018
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4019
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4020
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 4021
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "unregisterForConnectivityChanges"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4023
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 4025
    :cond_1
    return-void

    .line 4016
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1625
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1627
    .local v1, "isPendingMOIdle":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1628
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    .line 1629
    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 1633
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    .line 1631
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1636
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_5

    .line 1637
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_4

    .line 1639
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_6

    .line 1640
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1645
    :cond_6
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneState pendingMo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v3, :cond_7

    const-string v3, "null"

    goto :goto_5

    .line 1646
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1647
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), bg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1648
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1645
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneState oldState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1652
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v0, :cond_8

    .line 1653
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 1656
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyToOtherPhoneObject()V

    .line 1657
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1658
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1660
    :cond_8
    return-void
.end method

.method private updateVtDataUsage(Lcom/android/ims/ImsCall;J)V
    .locals 49
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "dataUsage"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3360
    const-wide/16 v2, 0x0

    .line 3361
    .local v2, "oldUsage":J
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3362
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3365
    :cond_0
    sub-long v6, p2, v2

    .line 3366
    .local v6, "delta":J
    iget-object v8, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v9, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVtDataUsage: call="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", delta="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3371
    .local v8, "currentTime":J
    iget-object v10, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v17

    .line 3374
    .local v17, "isRoaming":I
    new-instance v10, Landroid/net/NetworkStats;

    const/4 v15, 0x1

    invoke-direct {v10, v8, v9, v15}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 3375
    .local v10, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3379
    new-instance v14, Landroid/net/NetworkStats$Entry;

    const-string v12, "vt_data0"

    const/4 v13, -0x1

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-wide/16 v29, 0x2

    div-long v21, v6, v29

    const-wide/16 v23, 0x0

    div-long v25, v6, v29

    const-wide/16 v27, 0x0

    const-wide/16 v31, 0x0

    move-object v11, v14

    move-object/from16 v33, v14

    move/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v18, v20

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v31

    invoke-direct/range {v11 .. v28}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v11, v33

    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3383
    iput-object v10, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 3387
    new-instance v11, Landroid/net/NetworkStats;

    const/4 v12, 0x1

    invoke-direct {v11, v8, v9, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 3388
    .local v11, "vtDataUsageUidSnapshot":Landroid/net/NetworkStats;
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3393
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-ne v12, v13, :cond_1

    .line 3394
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3395
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "telecom"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/TelecomManager;

    .line 3396
    .local v12, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v14, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3397
    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 3396
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3402
    .end local v12    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    new-instance v12, Landroid/net/NetworkStats$Entry;

    const-string v32, "vt_data0"

    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3403
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v38, 0x1

    div-long v39, v6, v29

    const-wide/16 v41, 0x0

    div-long v43, v6, v29

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    move-object/from16 v31, v12

    move/from16 v37, v17

    invoke-direct/range {v31 .. v48}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 3402
    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3406
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 3407
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 7
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1358
    const-string v0, "acceptCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1361
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1362
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot accept call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1365
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1366
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1367
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1368
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1370
    const/4 v1, 0x0

    .line 1371
    .local v1, "answeringWillDisconnect":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 1372
    .local v2, "activeCall":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 1373
    .local v3, "ringingCall":Lcom/android/ims/ImsCall;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1374
    nop

    .line 1375
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v1

    .line 1379
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1381
    if-eqz v1, :cond_3

    .line 1383
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    .line 1385
    :try_start_0
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    move-object v0, v4

    .line 1386
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    goto :goto_1

    .line 1388
    :catch_0
    move-exception v4

    .line 1389
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot accept call"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1392
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1394
    .end local v1    # "answeringWillDisconnect":Z
    .end local v2    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v3    # "ringingCall":Lcom/android/ims/ImsCall;
    :goto_1
    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1395
    const-string v1, "acceptCall: incoming..."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1399
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1400
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_5

    .line 1401
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    move-object v0, v2

    .line 1402
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1404
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1411
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    nop

    .line 1415
    :goto_2
    return-void

    .line 1407
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "no valid ims call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1409
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_1
    move-exception v1

    .line 1410
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot accept call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1413
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1090
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1091
    const-string v1, "addParticipant : No foreground ims call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 1094
    .local v1, "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    if-eqz v1, :cond_1

    .line 1095
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1096
    .local v2, "callees":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1097
    .end local v2    # "callees":[Ljava/lang/String;
    goto :goto_0

    .line 1098
    :cond_1
    const-string v2, "addParticipant : ImsCallSession does not exist"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1101
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    :goto_0
    goto :goto_1

    .line 1102
    :cond_2
    const-string v0, "addParticipant : Foreground call does not exist"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1104
    :goto_1
    return-void
.end method

.method public addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "fromCode"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "toCode"    # Ljava/lang/Integer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    return-void
.end method

.method callEndCleanupHandOverCallIfAny()V
    .locals 2

    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1878
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1880
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 2

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1567
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1568
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1569
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1566
    :goto_0
    return v0
.end method

.method public canDial()Z
    .locals 2

    .line 1593
    const-string v0, "ro.telephony.disable-call"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, "disableCall":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1597
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    .line 1598
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1599
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1600
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1602
    .local v1, "ret":Z
    :goto_0
    return v1
.end method

.method public canTransfer()Z
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1608
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1607
    :goto_0
    return v0
.end method

.method public cancelUSSD()V
    .locals 2

    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    return-void

    .line 1961
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    goto :goto_0

    .line 1962
    :catch_0
    move-exception v0

    .line 1965
    :goto_0
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 1556
    const-string v0, "clearDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1558
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    .line 1560
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1562
    return-void
.end method

.method public conference()V
    .locals 15

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1489
    .local v0, "fgImsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1490
    const-string v1, "conference no foreground ims call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1491
    return-void

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1495
    .local v1, "bgImsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    .line 1496
    const-string v2, "conference no background ims call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1497
    return-void

    .line 1500
    :cond_1
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1501
    const-string v2, "conference: skip; foreground call already in process of merging."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1502
    return-void

    .line 1505
    :cond_2
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1506
    const-string v2, "conference: skip; background call already in process of merging."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1507
    return-void

    .line 1512
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v2

    .line 1513
    .local v2, "foregroundConnectTime":J
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v4

    .line 1515
    .local v4, "backgroundConnectTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_4

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 1516
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1517
    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v8

    .line 1516
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1518
    .local v6, "conferenceConnectTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "conference - using connect time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1519
    .end local v6    # "conferenceConnectTime":J
    :cond_4
    cmp-long v6, v2, v6

    if-lez v6, :cond_5

    .line 1520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conference - bg call connect time is 0; using fg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1521
    move-wide v6, v2

    .restart local v6    # "conferenceConnectTime":J
    goto :goto_0

    .line 1523
    .end local v6    # "conferenceConnectTime":J
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conference - fg call connect time is 0; using bg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1524
    move-wide v6, v4

    .line 1527
    .restart local v6    # "conferenceConnectTime":J
    :goto_0
    const-string v8, ""

    .line 1528
    .local v8, "foregroundId":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v9

    .line 1529
    .local v9, "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v9, :cond_6

    .line 1530
    invoke-virtual {v9, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    .line 1531
    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 1532
    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v8

    .line 1534
    :cond_6
    const-string v10, ""

    .line 1535
    .local v10, "backgroundId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v11

    .line 1536
    .local v11, "backgroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v11, :cond_7

    .line 1537
    invoke-virtual {v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 1538
    invoke-virtual {v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v10

    .line 1540
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "conference: fgCallId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", bgCallId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1543
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->merge(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    goto :goto_1

    .line 1544
    :catch_0
    move-exception v12

    .line 1545
    .local v12, "e":Lcom/android/ims/ImsException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "conference "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1547
    .end local v12    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 940
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    .line 941
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 942
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v0

    .line 945
    .local v0, "dialArgs":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 26
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    monitor-enter p0

    .line 950
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v0

    move/from16 v16, v0

    .line 952
    .local v16, "isPhoneInEcmMode":Z
    iget-object v0, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/Phone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    .line 954
    .local v12, "isEmergencyNumber":Z
    invoke-direct {v14, v12, v15}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 959
    iget v0, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->clirMode:I

    .line 960
    .local v0, "clirMode":I
    iget v1, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->videoState:I

    .line 962
    .local v1, "videoState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial clirMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 963
    if-eqz v12, :cond_0

    .line 964
    const/4 v0, 0x2

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial emergency call, set clirModIe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 969
    :cond_0
    move v11, v0

    .end local v0    # "clirMode":I
    .local v11, "clirMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 971
    iget-object v0, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_e

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {v14, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canAddVideoCallDuringImsAudioCall(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 979
    const/4 v0, 0x1

    if-eqz v16, :cond_1

    if-eqz v12, :cond_1

    .line 980
    invoke-direct {v14, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleEcmTimer(I)V

    .line 985
    :cond_1
    if-eqz v12, :cond_2

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    if-nez v2, :cond_2

    .line 987
    const-string v2, "dial: carrier does not support video emergency calls; downgrade to audio-only"

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 988
    const/4 v1, 0x0

    .line 991
    .end local v1    # "videoState":I
    .local v10, "videoState":I
    :cond_2
    move v10, v1

    const/4 v1, 0x0

    .line 992
    .local v1, "holdBeforeDial":Z
    const/4 v2, 0x0

    .line 997
    .local v2, "hangupBeforeDial":Z
    iget-object v3, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 998
    iget-object v3, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    .line 1003
    const/4 v1, 0x1

    .line 1005
    iput v10, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1006
    iget-object v3, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v3, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 1008
    invoke-direct {v14, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnDial(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1009
    const/4 v1, 0x0

    .line 1010
    const/4 v2, 0x1

    .line 1013
    const-string v3, "dial, hangingup active call"

    invoke-virtual {v14, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1014
    iget-object v3, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    goto :goto_0

    .line 1016
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 1000
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_5
    :goto_0
    move/from16 v17, v2

    .end local v2    # "hangupBeforeDial":Z
    .local v17, "hangupBeforeDial":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1021
    .local v2, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1023
    .local v3, "bgState":Lcom/android/internal/telephony/Call$State;
    iput v11, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 1025
    iget-object v8, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1026
    if-eqz v1, :cond_7

    .line 1027
    :try_start_1
    iget-object v4, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    move-object v2, v4

    .line 1028
    iget-object v4, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    move-object v3, v4

    .line 1031
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_6

    .line 1036
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_7

    .line 1037
    const/4 v1, 0x0

    goto :goto_1

    .line 1032
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :catchall_0
    move-exception v0

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v21, v12

    goto/16 :goto_6

    .line 1041
    .end local v1    # "holdBeforeDial":Z
    .end local v2    # "fgState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "bgState":Lcom/android/internal/telephony/Call$State;
    .local v18, "holdBeforeDial":Z
    .local v19, "fgState":Lcom/android/internal/telephony/Call$State;
    .local v20, "bgState":Lcom/android/internal/telephony/Call$State;
    :cond_7
    :goto_1
    move/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    :try_start_2
    new-instance v9, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1042
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v7, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    move-object v1, v9

    move-object v4, v14

    move v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V

    iput-object v9, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1044
    iget-object v1, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1045
    iget-object v1, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_8

    .line 1046
    :try_start_3
    const-string v1, "dial: setting RTT stream on mPendingMO"

    invoke-virtual {v14, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1047
    iget-object v1, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1049
    :catchall_1
    move-exception v0

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v21, v12

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_6

    :cond_8
    :goto_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1050
    :try_start_5
    iget-object v1, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {v14, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1052
    if-nez v18, :cond_b

    if-nez v17, :cond_b

    .line 1053
    if-eqz v16, :cond_a

    if-eqz v16, :cond_9

    if-eqz v12, :cond_9

    goto :goto_3

    .line 1057
    :cond_9
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1061
    nop

    .line 1062
    :try_start_7
    iget-object v1, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1063
    iput v11, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 1064
    iput v10, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1065
    iget-object v1, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v1, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 1066
    iput-boolean v0, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    goto :goto_4

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 1060
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "service not available"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1054
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_a
    :goto_3
    iget-object v0, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, v13, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v14, v0, v11, v10, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 1070
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isRegisterOnVowifi()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1071
    const/16 v2, 0x3ea

    const/16 v3, 0x3ed

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/16 v8, 0x3ef

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, ""

    move-object v1, v14

    move/from16 v24, v10

    move v10, v0

    .end local v10    # "videoState":I
    .local v24, "videoState":I
    move/from16 v25, v11

    move/from16 v11, v21

    .end local v11    # "clirMode":I
    .local v25, "clirMode":I
    move/from16 v21, v12

    move/from16 v12, v22

    .end local v12    # "isEmergencyNumber":Z
    .local v21, "isEmergencyNumber":Z
    move-object/from16 v13, v23

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVowifiEventBroadcastUst(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIIILjava/lang/String;)V

    goto :goto_5

    .line 1073
    .end local v21    # "isEmergencyNumber":Z
    .end local v24    # "videoState":I
    .end local v25    # "clirMode":I
    .restart local v10    # "videoState":I
    .restart local v11    # "clirMode":I
    .restart local v12    # "isEmergencyNumber":Z
    :cond_c
    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v21, v12

    .end local v10    # "videoState":I
    .end local v11    # "clirMode":I
    .end local v12    # "isEmergencyNumber":Z
    .restart local v21    # "isEmergencyNumber":Z
    .restart local v24    # "videoState":I
    .restart local v25    # "clirMode":I
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1074
    iget-object v0, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1076
    iget-object v0, v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit p0

    return-object v0

    .line 1049
    .end local v21    # "isEmergencyNumber":Z
    .end local v24    # "videoState":I
    .end local v25    # "clirMode":I
    .restart local v10    # "videoState":I
    .restart local v11    # "clirMode":I
    .restart local v12    # "isEmergencyNumber":Z
    :catchall_2
    move-exception v0

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v21, v12

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    .end local v10    # "videoState":I
    .end local v11    # "clirMode":I
    .end local v12    # "isEmergencyNumber":Z
    .end local v18    # "holdBeforeDial":Z
    .end local v19    # "fgState":Lcom/android/internal/telephony/Call$State;
    .end local v20    # "bgState":Lcom/android/internal/telephony/Call$State;
    .restart local v1    # "holdBeforeDial":Z
    .restart local v2    # "fgState":Lcom/android/internal/telephony/Call$State;
    .restart local v3    # "bgState":Lcom/android/internal/telephony/Call$State;
    .restart local v21    # "isEmergencyNumber":Z
    .restart local v24    # "videoState":I
    .restart local v25    # "clirMode":I
    :goto_6
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 976
    .end local v2    # "fgState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "bgState":Lcom/android/internal/telephony/Call$State;
    .end local v17    # "hangupBeforeDial":Z
    .end local v21    # "isEmergencyNumber":Z
    .end local v24    # "videoState":I
    .end local v25    # "clirMode":I
    .local v1, "videoState":I
    .restart local v11    # "clirMode":I
    .restart local v12    # "isEmergencyNumber":Z
    :cond_d
    move/from16 v25, v11

    move/from16 v21, v12

    .end local v11    # "clirMode":I
    .end local v12    # "isEmergencyNumber":Z
    .restart local v21    # "isEmergencyNumber":Z
    .restart local v25    # "clirMode":I
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    .end local v21    # "isEmergencyNumber":Z
    .end local v25    # "clirMode":I
    .restart local v11    # "clirMode":I
    .restart local v12    # "isEmergencyNumber":Z
    :cond_e
    move/from16 v25, v11

    move/from16 v21, v12

    .end local v11    # "clirMode":I
    .end local v12    # "isEmergencyNumber":Z
    .restart local v21    # "isEmergencyNumber":Z
    .restart local v25    # "clirMode":I
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "service not available"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    .end local v1    # "videoState":I
    .end local v21    # "isEmergencyNumber":Z
    .end local v25    # "clirMode":I
    .restart local v12    # "isEmergencyNumber":Z
    :cond_f
    move/from16 v21, v12

    .end local v12    # "isEmergencyNumber":Z
    .restart local v21    # "isEmergencyNumber":Z
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "dial: shouldNumberBePlacedOnIms = false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cs_fallback"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 949
    .end local v16    # "isPhoneInEcmMode":Z
    .end local v21    # "isEmergencyNumber":Z
    .end local p1    # "dialString":Ljava/lang/String;
    .end local p2    # "dialArgs":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    :catchall_4
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 881
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 887
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {v0, p0}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->disconnect()V

    .line 894
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3447
    const-string v0, "ImsPhoneCallTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCallEndedRegistrants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCallStartedRegistrants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRingingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mForegroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mBackgroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHandoverCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMmTelCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultDialerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVtDataUsageSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVtDataUsageUidSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3466
    const-string v0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3474
    :cond_0
    goto :goto_0

    .line 3472
    :catch_0
    move-exception v0

    .line 3473
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3476
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3477
    const-string v0, "mConnections:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3482
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 0

    .line 1552
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 898
    const-string v0, "ImsPhoneCallTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public getClirMode()I
    .locals 4

    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 929
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 928
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 930
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 933
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v0, "dial; could not get default CLIR mode."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 934
    return v1
.end method

.method public getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "callState"    # Lcom/android/internal/telephony/Call$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2136
    const/16 v0, 0x24

    .line 2138
    .local v0, "cause":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v1

    .line 2139
    .local v1, "code":I
    const/16 v2, 0xc

    sparse-switch v1, :sswitch_data_0

    .line 2273
    return v0

    .line 2268
    :sswitch_0
    const/16 v2, 0x19

    return v2

    .line 2141
    :sswitch_1
    const/16 v2, 0x75

    return v2

    .line 2235
    :sswitch_2
    const/16 v2, 0x3c

    return v2

    .line 2232
    :sswitch_3
    const/16 v2, 0x3b

    return v2

    .line 2226
    :sswitch_4
    const/16 v2, 0x36

    return v2

    .line 2229
    :sswitch_5
    const/16 v2, 0x37

    return v2

    .line 2223
    :sswitch_6
    const/16 v2, 0x35

    return v2

    .line 2220
    :sswitch_7
    const/16 v2, 0x33

    return v2

    .line 2217
    :sswitch_8
    const/16 v2, 0x34

    return v2

    .line 2162
    :sswitch_9
    const/4 v2, 0x2

    return v2

    .line 2150
    :sswitch_a
    const/4 v2, 0x3

    return v2

    .line 2241
    :sswitch_b
    const/16 v2, 0x40

    return v2

    .line 2238
    :sswitch_c
    const/16 v2, 0x3f

    return v2

    .line 2147
    :sswitch_d
    const/4 v2, 0x4

    return v2

    .line 2144
    :sswitch_e
    const/16 v2, 0x8

    return v2

    .line 2177
    :sswitch_f
    const/16 v2, 0x9

    return v2

    .line 2165
    :sswitch_10
    return v2

    .line 2172
    :sswitch_11
    return v2

    .line 2265
    :sswitch_12
    const/16 v2, 0x44

    return v2

    .line 2262
    :sswitch_13
    const/16 v2, 0x43

    return v2

    .line 2259
    :sswitch_14
    const/16 v2, 0x46

    return v2

    .line 2256
    :sswitch_15
    const/16 v2, 0x45

    return v2

    .line 2253
    :sswitch_16
    const/16 v2, 0x42

    return v2

    .line 2250
    :sswitch_17
    const/16 v2, 0x30

    return v2

    .line 2247
    :sswitch_18
    const/16 v2, 0x2f

    return v2

    .line 2244
    :sswitch_19
    const/16 v2, 0x2e

    return v2

    .line 2214
    :sswitch_1a
    const/16 v2, 0x3a

    return v2

    .line 2211
    :sswitch_1b
    const/16 v2, 0x15

    return v2

    .line 2208
    :sswitch_1c
    const/16 v2, 0x14

    return v2

    .line 2193
    :sswitch_1d
    const/16 v2, 0xd

    return v2

    .line 2159
    :sswitch_1e
    const/16 v2, 0x10

    return v2

    .line 2200
    :sswitch_1f
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_0

    .line 2201
    const/16 v2, 0x3e

    return v2

    .line 2203
    :cond_0
    const/16 v2, 0x3d

    return v2

    .line 2196
    :sswitch_20
    const/16 v2, 0x11

    return v2

    .line 2153
    :sswitch_21
    const/16 v2, 0x2d

    return v2

    .line 2187
    :sswitch_22
    const/16 v2, 0x12

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_22
        0x6c -> :sswitch_21
        0x6f -> :sswitch_20
        0x70 -> :sswitch_1f
        0x79 -> :sswitch_22
        0x7a -> :sswitch_22
        0x7b -> :sswitch_22
        0x7c -> :sswitch_22
        0x83 -> :sswitch_22
        0x84 -> :sswitch_22
        0x8f -> :sswitch_1e
        0x90 -> :sswitch_22
        0xc9 -> :sswitch_1d
        0xca -> :sswitch_1d
        0xcb -> :sswitch_1d
        0xf0 -> :sswitch_1c
        0xf1 -> :sswitch_1b
        0xf3 -> :sswitch_1a
        0xf4 -> :sswitch_19
        0xf5 -> :sswitch_18
        0xf6 -> :sswitch_17
        0xf7 -> :sswitch_16
        0xf8 -> :sswitch_15
        0xf9 -> :sswitch_14
        0xfa -> :sswitch_13
        0xfb -> :sswitch_12
        0x141 -> :sswitch_11
        0x14b -> :sswitch_11
        0x14c -> :sswitch_10
        0x14d -> :sswitch_f
        0x14f -> :sswitch_1d
        0x151 -> :sswitch_e
        0x152 -> :sswitch_d
        0x154 -> :sswitch_11
        0x155 -> :sswitch_e
        0x160 -> :sswitch_f
        0x162 -> :sswitch_f
        0x169 -> :sswitch_11
        0x16a -> :sswitch_11
        0x16b -> :sswitch_c
        0x16c -> :sswitch_b
        0x1f5 -> :sswitch_a
        0x1f9 -> :sswitch_1f
        0x1fe -> :sswitch_9
        0x3f6 -> :sswitch_8
        0x3f8 -> :sswitch_7
        0x57b -> :sswitch_6
        0x57c -> :sswitch_1e
        0x57d -> :sswitch_5
        0x57e -> :sswitch_4
        0x57f -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x5ea -> :sswitch_1
        0x5eb -> :sswitch_0
    .end sparse-switch
.end method

.method getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3490
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3494
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v0

    .line 3495
    .local v0, "ecbm":Lcom/android/ims/ImsEcbm;
    return-object v0

    .line 3491
    .end local v0    # "ecbm":Lcom/android/ims/ImsEcbm;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getImsRegistrationTech()I
    .locals 1

    .line 3544
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v0

    return v0

    .line 3547
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3500
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 3505
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3506
    :catch_0
    move-exception v0

    .line 3507
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    const/16 v2, 0x386

    if-ne v1, v2, :cond_0

    .line 3508
    const/4 v1, 0x0

    return-object v1

    .line 3510
    :cond_0
    throw v0

    .line 3501
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getMute()Z
    .locals 1

    .line 1749
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 3540
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSwitchingFgAndBgCallsValue()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2119
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return v0
.end method

.method public getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 3185
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0

    .line 3181
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getVtDataUsage(Z)Landroid/net/NetworkStats;
    .locals 3
    .param p1, "perUidStats"    # Z

    .line 3744
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 3745
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3746
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    .line 3747
    .local v2, "videoProvider":Landroid/telecom/Connection$VideoProvider;
    if-eqz v2, :cond_0

    .line 3748
    invoke-virtual {v2}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    .line 3750
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "videoProvider":Landroid/telecom/Connection$VideoProvider;
    :cond_0
    goto :goto_0

    .line 3753
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    :goto_1
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 3236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3238
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3340
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3341
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 3343
    .local v2, "mmiCode":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->setIsSsInfo(Z)V

    .line 3344
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processImsSsData(Landroid/os/AsyncResult;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3347
    goto/16 :goto_1

    .line 3345
    :catch_0
    move-exception v1

    .line 3346
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v3, "ImsPhoneCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in parsing SS Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    .end local v1    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_1

    .line 3330
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3332
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 3333
    .local v1, "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3335
    .end local v1    # "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3336
    nop

    .line 3337
    goto/16 :goto_1

    .line 3335
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 3306
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_5

    .line 3307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    .line 3308
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3309
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "handoverCheck: no longer FG; check skipped."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    .line 3312
    return-void

    .line 3314
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3316
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 3317
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v1, :cond_1

    .line 3318
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "handoverCheck: handover failed."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHandoverToWifiFailed()V

    .line 3322
    :cond_1
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3323
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-nez v2, :cond_2

    .line 3324
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    .line 3327
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_2
    goto/16 :goto_1

    .line 3299
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3300
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Landroid/util/Pair;

    if-eqz v1, :cond_5

    .line 3301
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 3302
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    .line 3303
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 3290
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3291
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    .line 3292
    .local v1, "call":Lcom/android/ims/ImsCall;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3293
    .local v2, "usage":Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VT data usage update. usage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", imsCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 3295
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateVtDataUsage(Lcom/android/ims/ImsCall;J)V

    goto/16 :goto_1

    .line 3264
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "call":Lcom/android/ims/ImsCall;
    .end local v2    # "usage":Ljava/lang/Long;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_5

    .line 3267
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V

    .line 3268
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v3, 0xe

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3269
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 3270
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3271
    :catch_1
    move-exception v0

    .line 3272
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 3273
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 3274
    const/16 v1, 0x12

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 3275
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    goto :goto_1

    .line 3259
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 3260
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3261
    goto :goto_1

    .line 3251
    :pswitch_8
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3256
    goto :goto_1

    .line 3252
    :catch_2
    move-exception v0

    .line 3254
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage EVENT_RESUME_BACKGROUND exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 3257
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_1

    .line 3240
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_3

    .line 3241
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 3242
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3243
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3245
    :cond_3
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3246
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 3247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 3248
    goto :goto_1

    .line 3281
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    if-eqz v0, :cond_4

    .line 3282
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 3284
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 3287
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 3288
    nop

    .line 3351
    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3486
    return-void
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1811
    const-string v0, "hangup call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1817
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1818
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    const/4 v1, 0x0

    .line 1820
    .local v1, "rejectCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_0

    .line 1821
    const-string v2, "(ringing) hangup incoming"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1822
    const/4 v1, 0x1

    goto :goto_0

    .line 1823
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_2

    .line 1824
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1826
    const-string v2, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    :cond_1
    const-string v2, "(foregnd) hangup foreground"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_6

    .line 1836
    const-string v2, "(backgnd) hangup waiting or background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1843
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1846
    if-eqz v0, :cond_4

    .line 1847
    if-eqz v1, :cond_3

    .line 1848
    const/16 v2, 0x1f8

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->reject(I)V

    .line 1849
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_1

    .line 1852
    :cond_3
    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1853
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_1

    .line 1856
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_5

    .line 1858
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 1859
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 1860
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1861
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1862
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1863
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    :cond_5
    :goto_1
    nop

    .line 1869
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1870
    return-void

    .line 1865
    :catch_0
    move-exception v2

    .line 1866
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1839
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsPhoneCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1814
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "rejectCall":Z
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1798
    const-string v0, "hangup connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1805
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1806
    return-void

    .line 1801
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCarrierDowngradeOfVtCallSupported()Z
    .locals 1

    .line 4051
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    return v0
.end method

.method isImsServiceReady()Z
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    return v0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 3517
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method public isUTLteEnabled()Z
    .locals 5

    .line 4212
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4214
    .local v0, "isRadioTechLte":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isUTWifiEnabled()Z
    .locals 5

    .line 4219
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4221
    .local v0, "isRadioTechIwlan":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isUtEnabled()Z
    .locals 2

    .line 3581
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isViLteDataMetered()Z
    .locals 1

    .line 3795
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return v0
.end method

.method public isViLteEnabled()Z
    .locals 5

    .line 4198
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4200
    .local v0, "isRadioTechLte":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isViWifiEnabled()Z
    .locals 5

    .line 4205
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4207
    .local v0, "isRadioTechIwlan":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isVideoCallEnabled()Z
    .locals 2

    .line 3535
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 4

    .line 3521
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3523
    .local v0, "isRadioTechLte":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isVowifiEnabled()Z
    .locals 4

    .line 3528
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3530
    .local v0, "isRadioTechIwlan":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 3411
    const-string v0, "ImsPhoneCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    return-void
.end method

.method logState()V
    .locals 3

    .line 3424
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    if-nez v0, :cond_0

    .line 3425
    return-void

    .line 3428
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3429
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Current IMS PhoneCall State:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3430
    const-string v1, " Foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3432
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    const-string v1, " Background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3435
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    const-string v1, " Ringing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3437
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3438
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    const-string v1, " Handover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3441
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    const-string v1, "ImsPhoneCallTracker"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 3415
    const-string v0, "ImsPhoneCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    return-void
.end method

.method public maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 6
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2095
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    .line 2097
    .local v0, "code":I
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2098
    .local v1, "toCheck":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2099
    .local v2, "wildcardToCheck":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2100
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2102
    .local v3, "toCode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maybeRemapReasonCode : fromCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ; toCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2102
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2104
    return v3

    .line 2105
    .end local v3    # "toCode":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2108
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2110
    .restart local v3    # "toCode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maybeRemapReasonCode : fromCode(wildcard) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ; toCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2110
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2112
    return v3

    .line 2114
    .end local v3    # "toCode":I
    :cond_1
    return v0
.end method

.method notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3221
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 3223
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3225
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3226
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3228
    :cond_0
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4119
    const-string v0, "onCallHoldReceived"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 4122
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4123
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    if-eqz v2, :cond_1

    .line 4125
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 4126
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4127
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 4128
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 4130
    :cond_1
    const-string v2, "android.telecom.event.CALL_REMOTELY_HELD"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4132
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 4134
    .local v2, "useVideoPauseWorkaround":Z
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v3, :cond_2

    .line 4135
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4141
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeToPausedState()V

    .line 4145
    .end local v2    # "useVideoPauseWorkaround":Z
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4146
    .local v2, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput v1, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 4147
    const/4 v1, 0x2

    iput v1, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4148
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 4149
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V

    .line 4150
    return-void
.end method

.method public pullExternalCall(Ljava/lang/String;II)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "dialogId"    # I

    .line 3665
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3666
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "CallPull"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3667
    const-string v1, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3669
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3670
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3673
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 3671
    :catch_0
    move-exception v1

    .line 3672
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullExternalCall failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 3674
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 917
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 918
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 919
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 906
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 907
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 908
    return-void
.end method

.method public registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3757
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3758
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1418
    const-string v0, "rejectCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1425
    return-void

    .line 1423
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeWaitingOrHolding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1884
    const-string v0, "resumeWaitingOrHolding"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1887
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1891
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1892
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->resume()V

    .line 1893
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1896
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_3

    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1899
    .restart local v0    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_2

    .line 1900
    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1902
    .local v1, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    move-object v1, v2

    .line 1904
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1905
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    .line 1904
    invoke-virtual {v0, v2, v1}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1907
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1910
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_2
    goto :goto_0

    .line 1915
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1916
    .restart local v0    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_4

    .line 1917
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->resume()V

    .line 1918
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    :goto_0
    nop

    .line 1925
    return-void

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1763
    const-string v0, "sendDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1766
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    .line 1769
    :cond_0
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1928
    const-string v0, "sendUSSD"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1931
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendUssd(Ljava/lang/String;)V

    .line 1933
    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1934
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1935
    return-void

    .line 1938
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_1

    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1940
    return-void

    .line 1943
    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1944
    .local v1, "callees":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1946
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v2, "dialstring"

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1949
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1954
    .end local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "callees":[Ljava/lang/String;
    goto :goto_0

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUSSD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1952
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1953
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1955
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public sendVowifiEventBroadcastUst(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIIILjava/lang/String;)V
    .locals 33
    .param p1, "svc"    # I
    .param p2, "ac"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "pm"    # Ljava/lang/String;
    .param p5, "rssi"    # I
    .param p6, "ts"    # Ljava/lang/String;
    .param p7, "dir"    # I
    .param p8, "ok"    # Z
    .param p9, "bytesIn"    # I
    .param p10, "bytesOut"    # I
    .param p11, "error"    # I
    .param p12, "bearer"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    .line 4237
    move-object/from16 v8, p12

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    const/16 v12, 0x54

    aput v12, v10, v11

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    .line 4238
    :cond_0
    sget-boolean v10, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v10, :cond_1

    .line 4239
    const-string v10, "sendVowifiEventBroadcastUst"

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4240
    const-string v10, "svc=%d, ac=%d, msg=%s, pm=%s, rssi=%d, ts=%s, dir=%d, ok=%b, bytesIn=%d, bytesOut=%d, error=%d, bearer=%s"

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    .line 4241
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v0, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    aput-object v4, v12, v13

    const/4 v13, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x7

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xb

    aput-object v8, v12, v13

    .line 4240
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4243
    :cond_1
    const-string v10, ""

    .local v10, "sSVC":Ljava/lang/String;
    const-string v12, ""

    .local v12, "sAC":Ljava/lang/String;
    const-string v13, ""

    .local v13, "sMSG":Ljava/lang/String;
    const-string v14, ""

    .local v14, "sPM":Ljava/lang/String;
    const-string v15, ""

    .local v15, "sRSSI":Ljava/lang/String;
    const-string v16, ""

    .local v16, "sTS":Ljava/lang/String;
    const-string v17, ""

    .line 4244
    .local v17, "sDIR":Ljava/lang/String;
    const-string v18, ""

    .local v18, "sOK":Ljava/lang/String;
    const-string v19, ""

    .local v19, "sBYTESIN":Ljava/lang/String;
    const-string v20, ""

    .local v20, "sBYTESOUT":Ljava/lang/String;
    const-string v21, ""

    .local v21, "sERROR":Ljava/lang/String;
    const-string v22, ""

    .line 4247
    .local v22, "sBEARER":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4258
    :pswitch_0
    const-string v10, "SVC=MMS;"

    .line 4259
    goto :goto_0

    .line 4255
    :pswitch_1
    const-string v10, "SVC=SMS;"

    .line 4256
    goto :goto_0

    .line 4252
    :pswitch_2
    const-string v10, "SVC=CALL;"

    .line 4253
    goto :goto_0

    .line 4249
    :pswitch_3
    const-string v10, "SVC=REG;"

    .line 4250
    nop

    .line 4263
    :goto_0
    sget-boolean v23, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v23, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sSVC: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4266
    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 4271
    :pswitch_4
    const-string v12, "AC=END;"

    .line 4272
    goto :goto_1

    .line 4268
    :pswitch_5
    const-string v12, "AC=START;"

    .line 4269
    nop

    .line 4276
    :goto_1
    sget-boolean v11, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sAC: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4279
    :cond_3
    if-eqz v2, :cond_4

    const-string v9, ""

    if-eq v2, v9, :cond_4

    .line 4280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4281
    :cond_4
    sget-boolean v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sMSG: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4284
    :cond_5
    if-eqz v0, :cond_6

    const-string v9, ""

    if-ne v0, v9, :cond_7

    .line 4285
    :cond_6
    iget-object v9, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 4287
    .end local p4    # "pm":Ljava/lang/String;
    .local v0, "pm":Ljava/lang/String;
    :cond_7
    const-string v9, "gsm.phone.number"

    const-string v11, ""

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    if-eq v9, v11, :cond_8

    .line 4288
    const-string v9, "gsm.phone.number"

    const-string v11, ""

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4290
    .end local v0    # "pm":Ljava/lang/String;
    .local v9, "pm":Ljava/lang/String;
    :cond_8
    move-object v9, v0

    if-eqz v9, :cond_b

    const-string v0, ""

    if-eq v9, v0, :cond_b

    .line 4292
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 4293
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    .line 4294
    .local v11, "byteBuffer":[B
    move-object/from16 v24, v0

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .local v24, "messageDigest":Ljava/security/MessageDigest;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4295
    .local v0, "strHex":Ljava/lang/StringBuffer;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v25, v23

    .end local v23    # "i":I
    .local v25, "i":I
    array-length v2, v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v26, v9

    move/from16 v9, v25

    if-ge v9, v2, :cond_a

    .line 4296
    .end local v25    # "i":I
    .local v9, "i":I
    .local v26, "pm":Ljava/lang/String;
    const/16 v2, 0xff

    :try_start_1
    aget-byte v23, v11, v9

    and-int v2, v2, v23

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4297
    .local v2, "hex":Ljava/lang/String;
    move-object/from16 v27, v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v11    # "byteBuffer":[B
    .local v27, "byteBuffer":[B
    move-object/from16 v28, v14

    const/4 v14, 0x1

    if-ne v11, v14, :cond_9

    .line 4298
    .end local v14    # "sPM":Ljava/lang/String;
    .local v28, "sPM":Ljava/lang/String;
    const/16 v11, 0x30

    :try_start_2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4300
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4295
    .end local v2    # "hex":Ljava/lang/String;
    add-int/lit8 v23, v9, 0x1

    .end local v9    # "i":I
    .restart local v23    # "i":I
    move-object/from16 v9, v26

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    move-object/from16 v2, p3

    goto :goto_2

    .line 4303
    .end local v0    # "strHex":Ljava/lang/StringBuffer;
    .end local v23    # "i":I
    .end local v24    # "messageDigest":Ljava/security/MessageDigest;
    .end local v27    # "byteBuffer":[B
    .end local v28    # "sPM":Ljava/lang/String;
    .restart local v14    # "sPM":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v28, v14

    .end local v14    # "sPM":Ljava/lang/String;
    .restart local v28    # "sPM":Ljava/lang/String;
    goto :goto_3

    .line 4302
    .end local v28    # "sPM":Ljava/lang/String;
    .restart local v0    # "strHex":Ljava/lang/StringBuffer;
    .restart local v11    # "byteBuffer":[B
    .restart local v14    # "sPM":Ljava/lang/String;
    .restart local v24    # "messageDigest":Ljava/security/MessageDigest;
    :cond_a
    move-object/from16 v27, v11

    move-object/from16 v28, v14

    .end local v11    # "byteBuffer":[B
    .end local v14    # "sPM":Ljava/lang/String;
    .restart local v27    # "byteBuffer":[B
    .restart local v28    # "sPM":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v2

    .line 4305
    .end local v0    # "strHex":Ljava/lang/StringBuffer;
    .end local v24    # "messageDigest":Ljava/security/MessageDigest;
    .end local v27    # "byteBuffer":[B
    .end local v28    # "sPM":Ljava/lang/String;
    .restart local v14    # "sPM":Ljava/lang/String;
    goto :goto_5

    .line 4303
    .end local v14    # "sPM":Ljava/lang/String;
    .restart local v28    # "sPM":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v26    # "pm":Ljava/lang/String;
    .end local v28    # "sPM":Ljava/lang/String;
    .local v9, "pm":Ljava/lang/String;
    .restart local v14    # "sPM":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v28, v14

    .line 4304
    .end local v9    # "pm":Ljava/lang/String;
    .end local v14    # "sPM":Ljava/lang/String;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v26    # "pm":Ljava/lang/String;
    .restart local v28    # "sPM":Ljava/lang/String;
    :goto_3
    const-string v2, "No Sha-256 Algorithm Exception"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_4

    .line 4307
    .end local v26    # "pm":Ljava/lang/String;
    .end local v28    # "sPM":Ljava/lang/String;
    .restart local v9    # "pm":Ljava/lang/String;
    .restart local v14    # "sPM":Ljava/lang/String;
    :cond_b
    move-object/from16 v26, v9

    move-object/from16 v28, v14

    .end local v9    # "pm":Ljava/lang/String;
    .end local v14    # "sPM":Ljava/lang/String;
    .restart local v26    # "pm":Ljava/lang/String;
    .restart local v28    # "sPM":Ljava/lang/String;
    :goto_4
    move-object/from16 v14, v28

    .end local v28    # "sPM":Ljava/lang/String;
    .restart local v14    # "sPM":Ljava/lang/String;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PM="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4308
    .end local v14    # "sPM":Ljava/lang/String;
    .local v0, "sPM":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sPM: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4311
    :cond_c
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v9, "wifi"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 4312
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 4313
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_d

    .line 4314
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RSSI="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v15    # "sRSSI":Ljava/lang/String;
    .local v11, "sRSSI":Ljava/lang/String;
    :goto_6
    goto :goto_7

    .line 4316
    .end local v11    # "sRSSI":Ljava/lang/String;
    .restart local v15    # "sRSSI":Ljava/lang/String;
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RSSI="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 4317
    .end local v15    # "sRSSI":Ljava/lang/String;
    .restart local v11    # "sRSSI":Ljava/lang/String;
    :goto_7
    sget-boolean v14, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRSSI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4320
    :cond_e
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4321
    .local v14, "sDateFormat":Ljava/text/SimpleDateFormat;
    if-eqz v4, :cond_10

    const-string v15, ""

    if-ne v4, v15, :cond_f

    .line 4322
    move-object/from16 v29, v2

    goto :goto_8

    .line 4324
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v2

    const-string v2, "TS="

    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    .local v29, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 4322
    .end local v29    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_10
    move-object/from16 v29, v2

    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v29    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TS="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4325
    .end local v16    # "sTS":Ljava/lang/String;
    .local v2, "sTS":Ljava/lang/String;
    :goto_9
    sget-boolean v15, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v15, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sTS: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4328
    :cond_11
    packed-switch p7, :pswitch_data_2

    .line 4338
    .end local v17    # "sDIR":Ljava/lang/String;
    .local v15, "sDIR":Ljava/lang/String;
    :goto_a
    move-object/from16 v15, v17

    goto :goto_b

    .line 4333
    .end local v15    # "sDIR":Ljava/lang/String;
    .restart local v17    # "sDIR":Ljava/lang/String;
    :pswitch_6
    const-string v17, "DIR=MT;"

    .line 4334
    goto :goto_a

    .line 4330
    :pswitch_7
    const-string v17, "DIR=MO;"

    .line 4331
    goto :goto_a

    .line 4338
    .end local v17    # "sDIR":Ljava/lang/String;
    .restart local v15    # "sDIR":Ljava/lang/String;
    :goto_b
    sget-boolean v16, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v16, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sDIR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4341
    :cond_12
    const-string v3, "OK=%B;"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v4, v17

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4342
    .end local v18    # "sOK":Ljava/lang/String;
    .local v3, "sOK":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v9

    const-string v9, "sOK: "

    .end local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .local v30, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 4345
    .end local v30    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_13
    move-object/from16 v30, v9

    .end local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v30    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_c
    if-eqz v5, :cond_14

    .line 4346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BYTES IN="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4347
    .end local v19    # "sBYTESIN":Ljava/lang/String;
    .local v4, "sBYTESIN":Ljava/lang/String;
    :cond_14
    move-object/from16 v4, v19

    sget-boolean v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sBYTESIN: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4350
    :cond_15
    if-eqz v6, :cond_16

    .line 4351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BYTES OUT="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4352
    .end local v20    # "sBYTESOUT":Ljava/lang/String;
    .local v5, "sBYTESOUT":Ljava/lang/String;
    :cond_16
    move-object/from16 v5, v20

    sget-boolean v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v9, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sBYTESOUT: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4355
    :cond_17
    if-eqz v7, :cond_18

    .line 4356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4357
    .end local v21    # "sERROR":Ljava/lang/String;
    .local v6, "sERROR":Ljava/lang/String;
    :cond_18
    move-object/from16 v6, v21

    sget-boolean v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sERROR: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4360
    :cond_19
    if-eqz v8, :cond_1b

    const-string v7, ""

    if-ne v8, v7, :cond_1a

    goto :goto_d

    .line 4363
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BEARER="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    .line 4361
    :cond_1b
    :goto_d
    const-string v7, "BEARER=WiFi"

    .line 4364
    .end local v22    # "sBEARER":Ljava/lang/String;
    .local v7, "sBEARER":Ljava/lang/String;
    :goto_e
    sget-boolean v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v9, :cond_1c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sBEARER: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4367
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4368
    .local v8, "broadcastString":Ljava/lang/String;
    const-string v9, "sendVowifiEventBroadcastUst"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4369
    sget-boolean v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->UST_DBG:Z

    if-eqz v9, :cond_1d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v0

    const-string v0, "sendVowifiEventBroadcastUst: Vowifi event data string:"

    .end local v0    # "sPM":Ljava/lang/String;
    .local v31, "sPM":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 4370
    .end local v31    # "sPM":Ljava/lang/String;
    .restart local v0    # "sPM":Ljava/lang/String;
    :cond_1d
    move-object/from16 v31, v0

    .end local v0    # "sPM":Ljava/lang/String;
    .restart local v31    # "sPM":Ljava/lang/String;
    :goto_f
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.tmobile.comm.METRIC"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4371
    .local v0, "vowifiEventIntentUst":Landroid/content/Intent;
    const-string v9, "DATA"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4372
    const-string v9, "com.tmobile.comm.METRIC"

    const/4 v1, -0x1

    invoke-static {v0, v9, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 4373
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ed
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3ef
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public setAlwaysPlayRemoteHoldTone(Z)V
    .locals 0
    .param p1, "shouldPlayRemoteHoldTone"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4154
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 4155
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .param p1, "isDataEnabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4056
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 4057
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .line 1744
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    .line 1746
    return-void
.end method

.method public setPhoneNumberUtilsProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;)V
    .locals 0
    .param p1, "phoneNumberUtilsProxy"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 787
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    .line 788
    return-void
.end method

.method public setRetryTimeout(Lcom/android/ims/ImsManager$Connector$RetryTimeout;)V
    .locals 1
    .param p1, "retryTimeout"    # Lcom/android/ims/ImsManager$Connector$RetryTimeout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    iput-object p1, v0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    .line 796
    return-void
.end method

.method public setSharedPreferenceProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;)V
    .locals 0
    .param p1, "sharedPreferenceProxy"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 778
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    .line 779
    return-void
.end method

.method public setSwitchingFgAndBgCallsValue(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2124
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 2125
    return-void
.end method

.method public setTtyMode(I)V
    .locals 3
    .param p1, "ttyMode"    # I

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 1705
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "ImsManager is null when setting TTY mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return-void

    .line 1710
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setTtyMode(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    goto :goto_0

    .line 1711
    :catch_0
    move-exception v0

    .line 1712
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtyMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1715
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1724
    return-void

    .line 1728
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsManager is null, ims service might crash before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1729
    :catch_1
    move-exception v0

    .line 1730
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUITTYMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1731
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1732
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1738
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    nop

    .line 1741
    :goto_1
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1773
    const-string v0, "startDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1776
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1777
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->startDtmf(C)V

    goto :goto_0

    .line 1779
    :cond_0
    const-string v1, "startDtmf : no foreground call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1781
    :goto_0
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1785
    const-string v0, "stopDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1787
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1788
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1789
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    goto :goto_0

    .line 1791
    :cond_0
    const-string v1, "stopDtmf : no foreground call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1793
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1439
    const-string v0, "switchWaitingOrHoldingAndActive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_6

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1447
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_3

    .line 1453
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1455
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1457
    .local v1, "switchingWithWaitingCall":Z
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 1458
    if-eqz v1, :cond_1

    .line 1459
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    goto :goto_1

    .line 1461
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 1463
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1468
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->hold()V

    .line 1469
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1473
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    if-nez v3, :cond_2

    .line 1474
    const-string v3, "mCallExpectedToResume is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1475
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :cond_2
    nop

    .line 1481
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "switchingWithWaitingCall":Z
    goto :goto_2

    .line 1477
    .restart local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .restart local v1    # "switchingWithWaitingCall":Z
    :catch_0
    move-exception v2

    .line 1478
    .local v2, "e":Lcom/android/ims/ImsException;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1479
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1448
    .end local v1    # "switchingWithWaitingCall":Z
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "no ims call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1481
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V

    .line 1484
    :cond_5
    :goto_2
    return-void

    .line 1442
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 924
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 913
    return-void
.end method

.method public unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3761
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3762
    return-void
.end method

.method public updateCarrierConfigCache(Landroid/os/PersistableBundle;)V
    .locals 11
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1172
    const-string v0, "allow_emergency_video_calls_bool"

    .line 1173
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 1174
    const-string v0, "treat_downgraded_video_calls_as_video_calls_bool"

    .line 1175
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 1177
    const-string v0, "drop_video_call_when_answering_audio_call_bool"

    .line 1178
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    .line 1180
    const-string v0, "allow_add_call_during_video_call"

    .line 1181
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 1183
    const-string v0, "allow_holding_video_call"

    .line 1184
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 1186
    const-string v0, "notify_vt_handover_to_wifi_failure_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 1188
    const-string v0, "support_downgrade_vt_to_audio_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 1190
    const-string v0, "notify_handover_video_from_wifi_to_lte_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 1192
    const-string v0, "notify_handover_video_from_lte_to_wifi_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 1194
    const-string v0, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 1196
    const-string v0, "vilte_data_is_metered_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 1198
    const-string v0, "support_pause_ims_video_calls_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 1200
    const-string v0, "always_play_remote_hold_tone_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 1202
    const-string v0, "ignore_reset_ut_capability_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    .line 1205
    const-string v0, "ims_reasoninfo_mapping_string_array"

    .line 1206
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "mappings":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 1208
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 1209
    .local v4, "mapping":Ljava/lang/String;
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1210
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 1211
    goto :goto_3

    .line 1216
    :cond_0
    :try_start_0
    aget-object v6, v5, v2

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1217
    const/4 v6, 0x0

    .local v6, "fromCode":Ljava/lang/Integer;
    goto :goto_1

    .line 1219
    .end local v6    # "fromCode":Ljava/lang/Integer;
    :cond_1
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1221
    .restart local v6    # "fromCode":Ljava/lang/Integer;
    :goto_1
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 1222
    .local v7, "message":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1224
    .local v8, "toCode":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    nop

    .line 1226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded ImsReasonInfo mapping : fromCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v9, "any"

    goto :goto_2

    .line 1227
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ; message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ; toCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1225
    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    .end local v6    # "fromCode":Ljava/lang/Integer;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "toCode":I
    goto :goto_3

    .line 1228
    :catch_0
    move-exception v6

    .line 1229
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ImsReasonInfo mapping found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1208
    .end local v4    # "mapping":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1233
    :cond_3
    const-string v1, "No carrier ImsReasonInfo mappings defined."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1235
    :cond_4
    return-void
.end method
