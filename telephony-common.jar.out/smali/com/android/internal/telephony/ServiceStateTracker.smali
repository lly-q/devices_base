.class public Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;,
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    }
.end annotation


# static fields
.field private static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field protected static final ALLOWED_NO_SERVICE_INTERVAL:I = 0x3a98

.field public static final CS_DISABLED:I = 0x3ec

.field public static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field public static final CS_ENABLED:I = 0x3eb

.field public static final CS_NORMAL_ENABLED:I = 0x3ed

.field public static final CS_NOTIFICATION:I = 0x3e7

.field public static final CS_REJECT_CAUSE_ENABLED:I = 0x7d1

.field public static final CS_REJECT_CAUSE_NOTIFICATION:I = 0x6f

.field static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final EVENT_ALL_DATA_DISCONNECTED:I = 0x31

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_FAKE_UI_TIMEOUT:I = 0x1f4

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_SERVICE_STATE_CHANGED:I = 0x35

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_READY:I = 0x23

.field private static final EVENT_OEM_CHECK_LTE_DETACH:I = 0x3e9

.field protected static final EVENT_OEM_CHECK_NO_SERVICE:I = 0x29a

.field private static final EVENT_OEM_SMOOTH_DATA_LVL:I = 0x66

.field private static final EVENT_OEM_SMOOTH_VOICE_LVL:I = 0x65

.field private static final EVENT_OEM_TRIG_LTE_RESEARCH:I = 0x3ea

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_OUT_OF_SERVICE_NOTIFY2UI:I = 0x64

.field protected static final EVENT_PHONE_TYPE_SWITCHED:I = 0x32

.field protected static final EVENT_PHYSICAL_CHANNEL_CONFIG:I = 0x37

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_POWER_FROM_CARRIER:I = 0x33

.field protected static final EVENT_RADIO_POWER_OFF_DONE:I = 0x36

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_NOT_INSERTED:I = 0x34

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field private static final INVALID_LTE_EARFCN:I = -0x1

.field public static final INVALID_MCC:Ljava/lang/String; = "000"

.field private static final IS_BT_MAC_OK_VALUE:I = 0x4

.field private static final IS_IMEI_OK_VALUE:I = 0x1

.field private static IS_OEM_SMOOTH:Z = false

.field private static final IS_PCB_OK_VALUE:I = 0x2

.field private static final IS_WIFI_MAC_OK_VALUE:I = 0x8

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final LTE_DETACH_NO_SERVICE_INTERVAL:I = 0x7530

.field private static final MS_PER_HOUR:I = 0x36ee80

.field protected static final NOTIFY_2_UI_DELAY_TIME:I = 0x7530

.field protected static final NOT_DELAY_OOS_TIMER:I = 0x2710

.field private static final POLL_PERIOD_MILLIS:I = 0x4e20

.field private static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field public static final PS_DISABLED:I = 0x3ea

.field public static final PS_ENABLED:I = 0x3e9

.field public static final PS_NOTIFICATION:I = 0x378

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field private static final SIGNAL_SMOOTH_TIMER:I = 0x4e20

.field public static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field public static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final VDBG:Z = true

.field private static lte_ps_reg:Z

.field protected static oos_msg_has_send:Z


# instance fields
.field private final FAKE_UI_DELAY_TIMER:I

.field protected bCheckNoServiceAgain:Z

.field protected isRemoveCard:Z

.field protected lastTime:J

.field private mAlarmSwitch:Z

.field private final mAttachLog:Landroid/util/LocalLog;

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field private mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

.field private mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCellLoc:Landroid/telephony/CellLocation;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mCr:Landroid/content/ContentResolver;

.field private mCurDataSpn:Ljava/lang/String;

.field private mCurPlmn:Ljava/lang/String;

.field private mCurShowPlmn:Z

.field private mCurShowSpn:Z

.field private mCurSpn:Ljava/lang/String;

.field private mCurrentCarrier:Ljava/lang/String;

.field private mCurrentOtaspMode:I

.field private mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field private mDataRoaming:Z

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDefaultRoamingIndicator:I

.field private mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDeviceShuttingDown:Z

.field private mDontPollSignalStrength:Z

.field private mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmergencyOnly:Z

.field protected mFakeUIPeriod:Z

.field private mGsmRoaming:Z

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field private mHomeNetworkId:[I

.field private mHomeSystemId:[I

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsRegistered:Z

.field private mImsRegistrationOnOff:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field private mIsMinInfoReady:Z

.field private mIsPendingNotify_data_lvl:Z

.field private mIsPendingNotify_voice_lvl:Z

.field private mIsSimReady:Z

.field private mIsSubscriptionFromRuim:Z

.field private mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCellInfoListTime:J

.field private mLastPhysicalChannelConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field private final mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

.field private mLteRsrpBoost:I

.field private final mLteRsrpBoostLock:Ljava/lang/Object;

.field private mMaxDataCalls:I

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field private mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

.field private mNewCellLoc:Landroid/telephony/CellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNewRejectCode:I

.field private mNewSS:Landroid/telephony/ServiceState;

.field private final mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

.field private mNotification:Landroid/app/Notification;

.field private mOEMCurLevel_data:I

.field private mOEMCurLevel_voice:I

.field private mOEMLastLevel_data:I

.field private mOEMLastLevel_voice:I

.field private final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field private mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPendingRadioPowerOffAfterDataOffTag:I

.field protected final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private final mPhoneTypeLog:Landroid/util/LocalLog;

.field public mPollingContext:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPowerOffDelayNeed:Z

.field private mPreferredNetworkType:I

.field private mPrevSubId:I

.field private mPrlVersion:Ljava/lang/String;

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioDisabledByCarrier:Z

.field private mRadioOffIntent:Landroid/app/PendingIntent;

.field protected mRadioOnTime:J

.field private final mRadioPowerLog:Landroid/util/LocalLog;

.field private final mRatLog:Landroid/util/LocalLog;

.field private final mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

.field private mReasonDataDenied:I

.field private final mRegStateManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mRejectCode:I

.field private mReportedGprsNoReg:Z

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field private mRoamingIndicator:I

.field private final mRoamingLog:Landroid/util/LocalLog;

.field public mSS:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSpnUpdatePending:Z

.field private mStartedGprsRegCheck:Z

.field public mSubId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mVoiceCapable:Z

.field private mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 245
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->oos_msg_has_send:Z

    .line 246
    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->lte_ps_reg:Z

    .line 5074
    const-string v0, "persist.sys.oem_smooth"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 624
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 131
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 132
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 149
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 150
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 173
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 174
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 176
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 177
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 179
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 180
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    .line 182
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 183
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 186
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 187
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 261
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 265
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 267
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 271
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 272
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 274
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 276
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 278
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 280
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 283
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 284
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFakeUIPeriod:Z

    .line 285
    const/16 v4, 0x2ee0

    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->FAKE_UI_DELAY_TIMER:I

    .line 291
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 300
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    .line 301
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    .line 302
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    .line 303
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    .line 304
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    .line 404
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 405
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 406
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 407
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 420
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    .line 425
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    .line 429
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 455
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 464
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 531
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 532
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 534
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    .line 535
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 538
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 539
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    .line 540
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 544
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 547
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 550
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    .line 555
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 557
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    .line 559
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    .line 563
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->bCheckNoServiceAgain:Z

    .line 566
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isRemoveCard:Z

    .line 567
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    .line 568
    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOnTime:J

    .line 847
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 5068
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 5069
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 5070
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 5071
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 5072
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 5073
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 625
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    .line 626
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 627
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 629
    new-instance v3, Lcom/android/internal/telephony/RatRatcheter;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/RatRatcheter;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    .line 630
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 632
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 634
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v4, 0x2a

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 635
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 636
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x2c

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 637
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x37

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 639
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 640
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 642
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 643
    new-instance v3, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v3}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 645
    new-instance v3, Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 647
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 648
    .local v4, "transportType":I
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {v6, v4, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;-><init>(ILcom/android/internal/telephony/Phone;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 650
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v6, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->registerForNetworkRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 652
    .end local v4    # "transportType":I
    goto :goto_0

    .line 656
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-class v4, Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 657
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 658
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 659
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 658
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeLocaleTracker(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    .line 661
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x2e

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 662
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 663
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 665
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 667
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 668
    .local v3, "airplaneMode":I
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "enable_cellular_on_boot"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 670
    .local v4, "enableCellularOnBoot":I
    if-lez v4, :cond_1

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 671
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init : airplane mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " enableCellularOnBoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 676
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v8, 0x33

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 681
    .local v2, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 682
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v6, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 692
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v6

    .line 693
    const-string v6, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 696
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v1, p0, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    .line 701
    new-instance v1, Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 703
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x65

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x66

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x67

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 709
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x68

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 711
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onCarrierConfigChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetOEMSignalLevel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->oemNvCheckAndRestore(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private cancelAllNotifications()V
    .locals 3

    .line 4065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAllNotifications: mPrevSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4066
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4067
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4068
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4069
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4070
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4071
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4073
    :cond_0
    return-void
.end method

.method private checkPsOfLTEDetach()V
    .locals 9

    .line 5662
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 5663
    .local v0, "mSubSC":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 5664
    .local v1, "subid":I
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 5665
    .local v2, "phoneId":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isRemoveCard:Z

    const/4 v4, 0x0

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 5670
    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/ServiceStateTracker;->lte_ps_reg:Z

    const/16 v5, 0x3e9

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 5672
    sput-boolean v4, Lcom/android/internal/telephony/ServiceStateTracker;->lte_ps_reg:Z

    .line 5673
    const-wide/16 v7, 0x7530

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5675
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_2

    .line 5677
    sput-boolean v4, Lcom/android/internal/telephony/ServiceStateTracker;->lte_ps_reg:Z

    .line 5678
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 5681
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_5

    .line 5683
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    const/16 v5, 0xd

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 5685
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    const/16 v5, 0x13

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v4, v6

    :goto_2
    sput-boolean v4, Lcom/android/internal/telephony/ServiceStateTracker;->lte_ps_reg:Z

    .line 5687
    :cond_5
    return-void

    .line 5667
    :cond_6
    :goto_3
    sput-boolean v4, Lcom/android/internal/telephony/ServiceStateTracker;->lte_ps_reg:Z

    .line 5668
    return-void
.end method

.method private containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)Z
    .locals 3
    .param p2, "earfcn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)Z"
        }
    .end annotation

    .line 4508
    .local p1, "earfcnPairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_1

    .line 4509
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 4510
    .local v1, "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p2, v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 4511
    const/4 v0, 0x1

    return v0

    .line 4513
    .end local v1    # "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 4516
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3785
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 3786
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3787
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3788
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3789
    .local v1, "operatorNumeric":Ljava/lang/String;
    const/4 v2, 0x1

    .line 3792
    .local v2, "equalsMcc":Z
    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3793
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 3795
    goto :goto_0

    .line 3794
    :catch_0
    move-exception v3

    .line 3796
    :goto_0
    return v2
.end method

.method private dumpCellInfoList(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4917
    const-string v0, " mLastCellInfoList={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4918
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4919
    const/4 v0, 0x1

    .line 4920
    .local v0, "first":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 4921
    .local v2, "info":Landroid/telephony/CellInfo;
    if-nez v0, :cond_0

    .line 4922
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4924
    :cond_0
    const/4 v0, 0x0

    .line 4925
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4926
    .end local v2    # "info":Landroid/telephony/CellInfo;
    goto :goto_0

    .line 4928
    .end local v0    # "first":Z
    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    return-void
.end method

.method private dumpEarfcnPairList(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4899
    const-string v0, " mEarfcnPairListForRsrpBoost={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4900
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4901
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4902
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4903
    .local v2, "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4905
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4907
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4908
    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_0

    .line 4909
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4911
    .end local v2    # "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 4913
    .end local v0    # "i":I
    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4914
    return-void
.end method

.method private fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "sid"    # I

    .line 3677
    if-gtz p2, :cond_0

    .line 3679
    return-object p1

    .line 3688
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getSavedTimeZoneId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3689
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getSavedTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 3690
    .local v0, "tzone":Ljava/util/TimeZone;
    const/4 v2, 0x1

    .local v2, "isNitzTimeZone":Z
    goto :goto_2

    .line 3692
    .end local v0    # "tzone":Ljava/util/TimeZone;
    .end local v2    # "isNitzTimeZone":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getCachedNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    .line 3693
    .local v0, "lastNitzData":Lcom/android/internal/telephony/NitzData;
    if-nez v0, :cond_2

    .line 3694
    const/4 v2, 0x0

    .local v2, "tzone":Ljava/util/TimeZone;
    goto :goto_1

    .line 3696
    .end local v2    # "tzone":Ljava/util/TimeZone;
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->guessZoneByNitzStatic(Lcom/android/internal/telephony/NitzData;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3698
    .restart local v2    # "tzone":Ljava/util/TimeZone;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixUnknownMcc(): guessNitzTimeZone returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3699
    if-nez v2, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3698
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3702
    :goto_1
    nop

    .end local v0    # "lastNitzData":Lcom/android/internal/telephony/NitzData;
    move-object v0, v2

    move v2, v1

    .line 3705
    .local v0, "tzone":Ljava/util/TimeZone;
    .local v2, "isNitzTimeZone":Z
    :goto_2
    const/4 v3, 0x0

    .line 3706
    .local v3, "utcOffsetHours":I
    if-eqz v0, :cond_4

    .line 3707
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0x36ee80

    div-int v3, v4, v5

    .line 3710
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzStateMachine;->getCachedNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v4

    .line 3711
    .local v4, "nitzData":Lcom/android/internal/telephony/NitzData;
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v1

    .line 3712
    .local v6, "isDst":Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    if-eqz v6, :cond_6

    move v1, v5

    nop

    :cond_6
    invoke-virtual {v7, p2, v3, v1, v2}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    move-result v1

    .line 3713
    .local v1, "mcc":I
    if-lez v1, :cond_7

    .line 3714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3716
    :cond_7
    return-object p1
.end method

.method private getBandwidthsFromConfigs(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)[I"
        }
    .end annotation

    .line 1769
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;

    .line 1770
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 1771
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1772
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1769
    return-object v0
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 2

    .line 5616
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 5617
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 5618
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_0

    .line 5620
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5621
    .local v1, "config":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 5622
    return-object v1

    .line 5626
    .end local v1    # "config":Landroid/os/PersistableBundle;
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method private getLteEarfcn(Landroid/telephony/CellIdentity;)I
    .locals 3
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1137
    const/4 v0, -0x1

    .line 1138
    .local v0, "lteEarfcn":I
    if-eqz p1, :cond_1

    .line 1139
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1141
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v0

    .line 1142
    nop

    .line 1150
    :cond_1
    :goto_0
    return v0
.end method

.method private getNetworkModeBySS(I)I
    .locals 2
    .param p1, "nt"    # I

    .line 5161
    const/4 v0, 0x0

    .line 5163
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_3

    .line 5166
    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/16 v1, 0x9

    if-eq p1, v1, :cond_8

    const/16 v1, 0xa

    if-eq p1, v1, :cond_8

    const/16 v1, 0xb

    if-eq p1, v1, :cond_8

    const/16 v1, 0xf

    if-ne p1, v1, :cond_1

    goto :goto_2

    .line 5170
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 5173
    :cond_2
    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0xc

    if-eq p1, v1, :cond_6

    const/16 v1, 0xd

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 5176
    :cond_3
    const/16 v1, 0x11

    if-ne p1, v1, :cond_4

    .line 5177
    const/4 v0, 0x2

    goto :goto_4

    .line 5178
    :cond_4
    const/16 v1, 0xe

    if-eq p1, v1, :cond_5

    const/16 v1, 0x13

    if-ne p1, v1, :cond_a

    .line 5179
    :cond_5
    const/4 v0, 0x3

    goto :goto_4

    .line 5175
    :cond_6
    :goto_0
    const/4 v0, 0x6

    goto :goto_4

    .line 5172
    :cond_7
    :goto_1
    const/4 v0, 0x5

    goto :goto_4

    .line 5169
    :cond_8
    :goto_2
    const/4 v0, 0x4

    goto :goto_4

    .line 5165
    :cond_9
    :goto_3
    const/4 v0, 0x1

    .line 5181
    :cond_a
    :goto_4
    return v0
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .line 4880
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 4883
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 4884
    return-void
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 4267
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4268
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0

    .line 4271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "newSubscriptionSource"    # I

    .line 4887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription Source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4888
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 4890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFromRuim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4891
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    .line 4892
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_1

    .line 4894
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4896
    :cond_1
    return-void
.end method

.method private handleOutOfService()V
    .locals 6

    .line 5633
    const-string v0, "intent.action.ACTION_MODEM_MANUAL_IND"

    .line 5634
    .local v0, "ACTION_MODEM_MANUAL_IND":Ljava/lang/String;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/ServiceStateTracker;->oos_msg_has_send:Z

    .line 5635
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5636
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 5637
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5638
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 5643
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 5644
    .local v2, "mTM":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    return-void

    .line 5646
    :cond_1
    nop

    .line 5647
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    nop

    .line 5648
    .local v1, "isCardReady":Z
    :cond_2
    const-string v3, "SST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOutOfService: mCi.getRadioState() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isCardReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    if-nez v1, :cond_3

    return-void

    .line 5652
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v4, :cond_4

    return-void

    .line 5654
    :cond_4
    const-string v3, "SST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOutOfService: broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5656
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5657
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5658
    return-void

    .line 5640
    .end local v1    # "isCardReady":Z
    .end local v2    # "mTM":Landroid/telephony/TelephonyManager;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_0
    const-string v1, "SST"

    const-string v2, "handleOutOfService: now is in service return it "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    return-void
.end method

.method private iccCardExists()Z
    .locals 3

    .line 4784
    const/4 v0, 0x0

    .line 4785
    .local v0, "iccCardExist":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 4786
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 4788
    :cond_1
    return v0
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .line 3727
    if-nez p2, :cond_1

    if-nez p1, :cond_0

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

.method private isHomeSid(I)Z
    .locals 3
    .param p1, "sid"    # I

    .line 1790
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1791
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1792
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 1793
    const/4 v1, 0x1

    return v1

    .line 1791
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1797
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .line 3637
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3640
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    .line 3642
    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 3644
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 3647
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    const v4, 0xffff

    if-eq v3, v4, :cond_3

    if-eqz p2, :cond_3

    if-eq p2, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 3650
    :cond_3
    return v1

    .line 3644
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3654
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 5553
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5555
    .local v0, "networks":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5556
    const/4 v1, 0x1

    return v1

    .line 5558
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 3672
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const-string v0, "000"

    .line 3673
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3672
    :goto_1
    return v0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3811
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3812
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    .line 3813
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3814
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    .line 3815
    .local v2, "numericArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3816
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3817
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 3818
    const-string v4, "non_roaming_operator_string_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3822
    .end local v3    # "config":Landroid/os/PersistableBundle;
    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 3826
    :cond_1
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 3827
    .local v6, "numeric":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3828
    const/4 v3, 0x1

    return v3

    .line 3826
    .end local v6    # "numeric":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3831
    :cond_3
    return v4

    .line 3823
    :cond_4
    :goto_1
    return v4
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3835
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3836
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    .line 3837
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3838
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    .line 3839
    .local v2, "numericArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3840
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3841
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 3842
    const-string v4, "roaming_operator_string_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3846
    .end local v3    # "config":Landroid/os/PersistableBundle;
    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 3850
    :cond_1
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 3851
    .local v6, "numeric":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3852
    const/4 v3, 0x1

    return v3

    .line 3850
    .end local v6    # "numeric":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3855
    :cond_3
    return v4

    .line 3847
    :cond_4
    :goto_1
    return v4
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 7
    .param p1, "roamInd"    # Ljava/lang/String;

    .line 2397
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2398
    const v1, 0x1070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2402
    .local v0, "homeRoamIndicators":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamIndForHomeSystem: homeRoamIndicators="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2403
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2404
    const-string v2, "roamInd = -1 return true "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2405
    return v1

    .line 2409
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2412
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 2413
    .local v5, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2414
    return v1

    .line 2412
    .end local v5    # "homeRoamInd":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2418
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamIndForHomeSystem: No match found against list for roamInd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2419
    return v2

    .line 2423
    :cond_3
    const-string v1, "isRoamIndForHomeSystem: No list found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2424
    return v2
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .line 2073
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3775
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3752
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 3753
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3754
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3758
    .local v0, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 3759
    .local v1, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    .line 3761
    .local v2, "onss":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 3762
    .local v3, "equalsOnsl":Z
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    .line 3764
    .local v6, "equalsOnss":Z
    :goto_1
    if-nez v3, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v4, v5

    :goto_3
    return v4
.end method

.method private isUSTdomesticRoaming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "simNumeric"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .line 5286
    const/4 v0, 0x0

    .line 5287
    .local v0, "result":Z
    const-string v1, "310,311,312,313,314,315,316,330,302,334,348"

    .line 5289
    .local v1, "USTdomesticMCCs":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5290
    .local v3, "operatorMCC":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUSTdomesticRoaming() operatorMCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isUSTsim(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5294
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 5296
    .local v6, "USTdomesticMCC":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5298
    const/4 v0, 0x1

    .line 5299
    goto :goto_1

    .line 5294
    .end local v6    # "USTdomesticMCC":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5304
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUSTdomesticRoaming() result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5305
    return v0
.end method

.method private isUSTinternationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "simNumeric"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .line 5311
    const/4 v0, 0x0

    .line 5312
    .local v0, "result":Z
    const-string v1, "310500,310970,310033,310470,310370,310032,310140,311250,310400,311170,310110"

    .line 5314
    .local v1, "USTinternationalMCCMNCs":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUSTinternationalRoaming() operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isUSTsim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5318
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5320
    .local v5, "USTinternationalMCCMNC":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5322
    const/4 v0, 0x1

    .line 5323
    goto :goto_1

    .line 5318
    .end local v5    # "USTinternationalMCCMNC":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5328
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUSTinternationalRoaming() result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5329
    return v0
.end method

.method private isUSTsim(Ljava/lang/String;)Z
    .locals 7
    .param p1, "simNumeric"    # Ljava/lang/String;

    .line 5265
    const/4 v0, 0x0

    .line 5266
    .local v0, "result":Z
    const-string v1, "00101,310160,310200,310210,310220,310230,310240,310250,310260,310270,310310,310490,310660,310800"

    .line 5268
    .local v1, "USTnumerics":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUSTsim() simNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5270
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5272
    .local v5, "USTnumeric":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5274
    const/4 v0, 0x1

    .line 5275
    goto :goto_1

    .line 5270
    .end local v5    # "USTnumeric":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5279
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUSTsim() result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5280
    return v0
.end method

.method private static isValidLteBandwidthKhz(I)Z
    .locals 1
    .param p0, "bandwidth"    # I

    .line 2318
    const/16 v0, 0x578

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbb8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a98

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_0

    .line 2327
    const/4 v0, 0x0

    return v0

    .line 2325
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$WWHOcG5P4-jgjzPPgLwm-wN15OM(Landroid/telephony/PhysicalChannelConfig;)I
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlink()I

    move-result p0

    return p0
.end method

.method private logAttachChange()V
    .locals 2

    .line 2865
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2866
    return-void
.end method

.method private logPhoneTypeChange()V
    .locals 2

    .line 2869
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2870
    return-void
.end method

.method private logRatChange()V
    .locals 2

    .line 2873
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2874
    return-void
.end method

.method private logRoamingChange()V
    .locals 2

    .line 2861
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2862
    return-void
.end method

.method private modemTriggeredPollState()V
    .locals 1

    .line 3040
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    .line 3041
    return-void
.end method

.method private networkCountryIsoChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "newCountryIsoCode"    # Ljava/lang/String;
    .param p2, "prevCountryIsoCode"    # Ljava/lang/String;

    .line 4766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4768
    const-string v0, "countryIsoChanged: no new country ISO code"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4770
    const/4 v0, 0x0

    return v0

    .line 4773
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4775
    const-string v0, "countryIsoChanged: no previous country ISO code"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4777
    return v1

    .line 4779
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private notifyCdmaSubscriptionInfoReady()V
    .locals 1

    .line 4295
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 4296
    const-string v0, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4297
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4299
    :cond_0
    return-void
.end method

.method private oemNvCheckAndRestore(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2960
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "state.nvRestore.onBootup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x22b8

    const v3, 0x1080078

    if-eqz v1, :cond_0

    .line 2961
    const-string v1, "nv restore state reached."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2965
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2968
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2969
    .local v4, "r":Landroid/content/res/Resources;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "OEM_NV_Backup:The NV partition is invalid!"

    .line 2970
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 2971
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "OEM_NV_Backup"

    .line 2972
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "The NV partition is invalid!"

    .line 2973
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 2974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 2976
    .local v5, "mNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 2977
    .local v6, "n":Landroid/app/Notification;
    invoke-virtual {v1, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2979
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "mNotificationBuilder":Landroid/app/Notification$Builder;
    .end local v6    # "n":Landroid/app/Notification;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "state.imei.pcb.bt.wifi.lost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2980
    const-string v1, "reason"

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2982
    .local v1, "judge_value":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 2983
    const-string v4, "IMEI"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    :cond_1
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 2986
    const-string v4, " PCB"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    :cond_2
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    .line 2989
    const-string v4, " BT_MAC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    :cond_3
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_4

    .line 2992
    const-string v4, " WIFI_MAC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    :cond_4
    const-string v4, " MISSED"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xiaopeng test for judge_value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "sb ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3000
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 3003
    .local v4, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3004
    .local v5, "r":Landroid/content/res/Resources;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "OEM_NV_Backup: nv lost!"

    .line 3005
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 3006
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v6, "OEM_NV_Backup"

    .line 3007
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3011
    .local v3, "mNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 3012
    .restart local v6    # "n":Landroid/app/Notification;
    invoke-virtual {v4, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3014
    .end local v1    # "judge_value":I
    .end local v3    # "mNotificationBuilder":Landroid/app/Notification$Builder;
    .end local v4    # "nm":Landroid/app/NotificationManager;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "n":Landroid/app/Notification;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keylog.nvCheck.produce"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3016
    const-string v1, "key log reached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3017
    nop

    .line 3019
    :cond_6
    return-void
.end method

.method private onCarrierConfigChanged()V
    .locals 2

    .line 4570
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4571
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4572
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 4574
    .local v1, "config":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 4575
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateLteEarfcnLists(Landroid/os/PersistableBundle;)V

    .line 4576
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateReportingCriteria(Landroid/os/PersistableBundle;)V

    .line 4578
    :cond_0
    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3866
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 3868
    .local v0, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestrictedStateChanged: E rs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3870
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 3871
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3873
    .local v1, "state":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 3877
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v5, :cond_5

    .line 3878
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 3881
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    move v3, v4

    nop

    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 3885
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestrictedStateChanged: new rs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3887
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3888
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3889
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3890
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3891
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3892
    const/16 v2, 0x3ea

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3900
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    const/16 v3, 0x3ee

    const/16 v4, 0x3ed

    const/16 v5, 0x3ec

    if-eqz v2, :cond_a

    .line 3901
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3903
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3904
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3906
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3907
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3909
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3911
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    const/16 v6, 0x3eb

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3912
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3913
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3915
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3916
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3918
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3919
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3921
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3923
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3924
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3925
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result v2

    if-nez v2, :cond_e

    .line 3927
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3928
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3930
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3931
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3933
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3936
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3938
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3940
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_5

    .line 3944
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3946
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3950
    :cond_13
    :goto_5
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3952
    .end local v1    # "state":I
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestrictedStateChanged: X rs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3953
    return-void
.end method

.method private pollStateDone()V
    .locals 50

    .line 3099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3100
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    .line 3103
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "telephony.test.forceRoaming"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3104
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 3105
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 3107
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 3108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 3110
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    if-eqz v1, :cond_2

    .line 3111
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyTester;->overrideServiceState(Landroid/telephony/ServiceState;)V

    .line 3115
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Poll ServiceState done:  oldSS=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] newSS=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] oldMaxDataCalls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNewMaxDataCalls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldReasonDataDenied="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNewReasonDataDenied="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3123
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->oemCheckNoService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3124
    return-void

    .line 3129
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isFakeUIPeriod()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3130
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_4

    .line 3131
    const-string v1, "stop fake UI, in service now!"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setFakeUIPeriod(Z)V

    .line 3133
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto :goto_0

    .line 3135
    :cond_4
    const-string v1, "keep fake UI, wait for recovering service"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3136
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3137
    return-void

    .line 3141
    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isOtherPhoneOffhook()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3142
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_6

    .line 3143
    const-string v1, "start fake UI"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setFakeUIPeriod(Z)V

    .line 3145
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3146
    return-void

    .line 3151
    :cond_6
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3152
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0xd

    if-eq v1, v5, :cond_7

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3154
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    if-eq v1, v4, :cond_7

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3156
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    if-ne v1, v6, :cond_8

    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3158
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v7

    if-eq v1, v7, :cond_8

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3160
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    if-eq v1, v5, :cond_8

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3162
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    if-eq v1, v4, :cond_8

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3164
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    if-eq v1, v6, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v2

    .line 3168
    .local v1, "hasDataRegOnLTE":Z
    :goto_1
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3169
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3170
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    move v4, v2

    .line 3172
    .local v4, "hasRegistered":Z
    :goto_2
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3173
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3174
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-eqz v7, :cond_a

    move v7, v3

    goto :goto_3

    :cond_a
    move v7, v2

    .line 3176
    .local v7, "hasDeregistered":Z
    :goto_3
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3177
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3178
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-nez v8, :cond_b

    move v8, v3

    goto :goto_4

    :cond_b
    move v8, v2

    .line 3180
    .local v8, "hasDataAttached":Z
    :goto_4
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3181
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3182
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    if-eqz v9, :cond_c

    move v9, v3

    goto :goto_5

    :cond_c
    move v9, v2

    .line 3184
    .local v9, "hasDataDetached":Z
    :goto_5
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3185
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v11

    if-eq v10, v11, :cond_d

    move v10, v3

    goto :goto_6

    :cond_d
    move v10, v2

    .line 3187
    .local v10, "hasDataRegStateChanged":Z
    :goto_6
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3188
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v11

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v12

    if-eq v11, v12, :cond_e

    move v11, v3

    goto :goto_7

    :cond_e
    move v11, v2

    .line 3190
    .local v11, "hasVoiceRegStateChanged":Z
    :goto_7
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v3

    .line 3194
    .local v12, "hasLocationChanged":Z
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v13

    if-nez v13, :cond_f

    move v13, v3

    goto :goto_8

    :cond_f
    move v13, v2

    .line 3196
    .local v13, "isDataInService":Z
    :goto_8
    if-eqz v13, :cond_10

    .line 3197
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v15, v5, v12}, Lcom/android/internal/telephony/RatRatcheter;->ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Z)V

    .line 3200
    :cond_10
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3201
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v14

    if-eq v5, v14, :cond_11

    move v5, v3

    goto :goto_9

    :cond_11
    move v5, v2

    .line 3203
    .local v5, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_9
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3204
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v15

    if-eq v14, v15, :cond_12

    move v14, v3

    goto :goto_a

    :cond_12
    move v14, v2

    .line 3206
    .local v14, "hasRilDataRadioTechnologyChanged":Z
    :goto_a
    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15, v2}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 3208
    .local v2, "hasChanged":Z
    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-nez v15, :cond_13

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-eqz v15, :cond_13

    move v15, v3

    goto :goto_b

    :cond_13
    const/4 v15, 0x0

    .line 3210
    .local v15, "hasVoiceRoamingOn":Z
    :goto_b
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 3212
    .local v3, "hasVoiceRoamingOff":Z
    :goto_c
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    .line 3214
    .local v6, "hasDataRoamingOn":Z
    :goto_d
    move/from16 v19, v13

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .end local v13    # "isDataInService":Z
    .local v19, "isDataInService":Z
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v13

    if-eqz v13, :cond_16

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v13

    if-nez v13, :cond_16

    const/4 v13, 0x1

    goto :goto_e

    :cond_16
    const/4 v13, 0x0

    .line 3216
    .local v13, "hasDataRoamingOff":Z
    :goto_e
    move/from16 v20, v1

    iget v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    .end local v1    # "hasDataRegOnLTE":Z
    .local v20, "hasDataRegOnLTE":Z
    move/from16 v21, v11

    iget v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    .end local v11    # "hasVoiceRegStateChanged":Z
    .local v21, "hasVoiceRegStateChanged":Z
    if-eq v1, v11, :cond_17

    const/4 v1, 0x1

    goto :goto_f

    :cond_17
    const/4 v1, 0x0

    .line 3218
    .local v1, "hasRejectCauseChanged":Z
    :goto_f
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v11

    move/from16 v22, v1

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .end local v1    # "hasRejectCauseChanged":Z
    .local v22, "hasRejectCauseChanged":Z
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-eq v11, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    .line 3221
    .local v1, "hasCssIndicatorChanged":Z
    :goto_10
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 3222
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .end local v1    # "hasCssIndicatorChanged":Z
    .local v23, "hasCssIndicatorChanged":Z
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_11

    .end local v23    # "hasCssIndicatorChanged":Z
    .restart local v1    # "hasCssIndicatorChanged":Z
    :cond_19
    move/from16 v23, v1

    .end local v1    # "hasCssIndicatorChanged":Z
    .restart local v23    # "hasCssIndicatorChanged":Z
    const/4 v1, 0x1

    .line 3225
    .local v1, "hasMccChanged":Z
    :goto_11
    const/4 v11, 0x0

    .line 3226
    .local v11, "has4gHandoff":Z
    const/16 v24, 0x0

    .line 3227
    .local v24, "hasMultiApnSupport":Z
    const/16 v25, 0x0

    .line 3228
    .local v25, "hasLostMultiApnSupport":Z
    move/from16 v26, v1

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .end local v1    # "hasMccChanged":Z
    .local v26, "hasMccChanged":Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    move/from16 v27, v11

    .end local v11    # "has4gHandoff":Z
    .local v27, "has4gHandoff":Z
    if-eqz v1, :cond_20

    .line 3229
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3230
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3231
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v11, 0xd

    if-eq v1, v11, :cond_1b

    goto :goto_12

    :cond_1a
    const/16 v11, 0xd

    :goto_12
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3234
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-ne v1, v11, :cond_1c

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3236
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    goto :goto_13

    :cond_1c
    const/4 v1, 0x0

    :goto_13
    move v11, v1

    .line 3238
    .end local v27    # "has4gHandoff":Z
    .restart local v11    # "has4gHandoff":Z
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3239
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    move/from16 v28, v11

    const/16 v11, 0xd

    if-ne v1, v11, :cond_1e

    .end local v11    # "has4gHandoff":Z
    .local v28, "has4gHandoff":Z
    goto :goto_14

    .end local v28    # "has4gHandoff":Z
    .restart local v11    # "has4gHandoff":Z
    :cond_1d
    move/from16 v28, v11

    .end local v11    # "has4gHandoff":Z
    .restart local v28    # "has4gHandoff":Z
    :goto_14
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3242
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3243
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v11, 0xd

    if-eq v1, v11, :cond_1e

    const/4 v1, 0x1

    goto :goto_15

    :cond_1e
    const/4 v1, 0x0

    :goto_15
    move/from16 v24, v1

    .line 3246
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3247
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/4 v11, 0x4

    if-lt v1, v11, :cond_1f

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3249
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v11, 0x8

    if-gt v1, v11, :cond_1f

    const/4 v1, 0x1

    goto :goto_16

    :cond_1f
    const/4 v1, 0x0

    :goto_16
    move/from16 v25, v1

    .line 3254
    move/from16 v11, v24

    move/from16 v0, v25

    move/from16 v1, v28

    goto :goto_17

    .end local v28    # "has4gHandoff":Z
    .restart local v27    # "has4gHandoff":Z
    :cond_20
    move/from16 v11, v24

    move/from16 v0, v25

    move/from16 v1, v27

    .end local v24    # "hasMultiApnSupport":Z
    .end local v25    # "hasLostMultiApnSupport":Z
    .end local v27    # "has4gHandoff":Z
    .local v0, "hasLostMultiApnSupport":Z
    .local v1, "has4gHandoff":Z
    .local v11, "hasMultiApnSupport":Z
    :goto_17
    move/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "hasLostMultiApnSupport":Z
    .local v29, "hasLostMultiApnSupport":Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v11

    const-string v11, "pollStateDone: hasRegistered="

    .end local v11    # "hasMultiApnSupport":Z
    .local v30, "hasMultiApnSupport":Z
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasDeregistered="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasDataAttached="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasDataDetached="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasDataRegStateChanged="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasRilVoiceRadioTechnologyChanged= "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasRilDataRadioTechnologyChanged="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasChanged="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasVoiceRoamingOn="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasVoiceRoamingOff="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasDataRoamingOn="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasDataRoamingOff="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasLocationChanged="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " has4gHandoff = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " hasMultiApnSupport="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v30    # "hasMultiApnSupport":Z
    .restart local v11    # "hasMultiApnSupport":Z
    move/from16 v31, v11

    const-string v11, " hasLostMultiApnSupport="

    .end local v11    # "hasMultiApnSupport":Z
    .local v31, "hasMultiApnSupport":Z
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v29    # "hasLostMultiApnSupport":Z
    .local v11, "hasLostMultiApnSupport":Z
    move/from16 v32, v11

    const-string v11, " hasCssIndicatorChanged="

    .end local v11    # "hasLostMultiApnSupport":Z
    .local v32, "hasLostMultiApnSupport":Z
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v23    # "hasCssIndicatorChanged":Z
    .local v11, "hasCssIndicatorChanged":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v33, v12

    move/from16 v25, v32

    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3275
    .end local v12    # "hasLocationChanged":Z
    .end local v32    # "hasLostMultiApnSupport":Z
    .restart local v25    # "hasLostMultiApnSupport":Z
    .local v33, "hasLocationChanged":Z
    const/16 v18, 0x2

    if-nez v21, :cond_22

    if-eqz v10, :cond_21

    goto :goto_18

    .line 3282
    :cond_21
    move/from16 v35, v6

    move/from16 v34, v13

    goto :goto_1a

    .line 3276
    :cond_22
    :goto_18
    iget-object v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0xc3c2

    goto :goto_19

    .line 3277
    :cond_23
    const v0, 0xc3c4

    :goto_19
    move/from16 v34, v13

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .end local v13    # "hasDataRoamingOff":Z
    .local v34, "hasDataRoamingOff":Z
    move/from16 v35, v6

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3278
    .end local v6    # "hasDataRoamingOn":Z
    .local v35, "hasDataRoamingOn":Z
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v13, v16

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x1

    aput-object v6, v13, v17

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3279
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v18

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v23, 0x3

    aput-object v6, v13, v23

    .line 3276
    invoke-static {v0, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3282
    :goto_1a
    iget-object v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3286
    if-eqz v5, :cond_25

    .line 3287
    const/4 v0, -0x1

    .line 3288
    .local v0, "cid":I
    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 3289
    .local v6, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_24

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 3294
    :cond_24
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v16, 0x0

    aput-object v23, v13, v16

    move-object/from16 v36, v6

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3295
    .end local v6    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .local v36, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x1

    aput-object v6, v13, v17

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3296
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v18

    .line 3294
    const v6, 0xc3cb

    invoke-static {v6, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RAT switched "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3300
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    .line 3299
    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3303
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    .line 3302
    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at cell "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3298
    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3307
    .end local v0    # "cid":I
    .end local v36    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_25
    if-eqz v11, :cond_26

    .line 3308
    iget-object v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v6, "cssIndicatorChanged"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 3311
    :cond_26
    iget v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    iput v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 3312
    iget v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    iput v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 3313
    iget v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    iput v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    .line 3316
    :cond_27
    iget-object v0, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 3319
    .local v0, "oldMergedSS":Landroid/telephony/ServiceState;
    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3320
    .local v6, "tss":Landroid/telephony/ServiceState;
    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3321
    iput-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3323
    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3326
    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 3327
    .local v13, "tcl":Landroid/telephony/CellLocation;
    move-object/from16 v37, v6

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    .end local v6    # "tss":Landroid/telephony/ServiceState;
    .local v37, "tss":Landroid/telephony/ServiceState;
    iput-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 3328
    iput-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    .line 3331
    if-eqz v2, :cond_28

    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    move/from16 v38, v11

    const/4 v11, 0x1

    if-ne v6, v11, :cond_29

    .end local v11    # "hasCssIndicatorChanged":Z
    .local v38, "hasCssIndicatorChanged":Z
    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3332
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-ne v6, v11, :cond_29

    .line 3333
    const-string v6, "Clear Signal strength"

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3334
    new-instance v6, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    invoke-direct {v6, v11, v11, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    goto :goto_1b

    .line 3338
    .end local v38    # "hasCssIndicatorChanged":Z
    .restart local v11    # "hasCssIndicatorChanged":Z
    :cond_28
    move/from16 v38, v11

    .end local v11    # "hasCssIndicatorChanged":Z
    .restart local v38    # "hasCssIndicatorChanged":Z
    :cond_29
    :goto_1b
    if-eqz v5, :cond_2a

    .line 3339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 3342
    :cond_2a
    iget-object v6, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3343
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v11, "phone"

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 3345
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_2b

    .line 3346
    iget-object v11, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    move-object/from16 v39, v13

    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .end local v13    # "tcl":Landroid/telephony/CellLocation;
    .local v39, "tcl":Landroid/telephony/CellLocation;
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    invoke-virtual {v6, v11, v13}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 3347
    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3348
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v13

    iget-object v11, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3349
    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    .line 3347
    move/from16 v40, v3

    const/16 v3, 0x4c

    invoke-static {v3, v13, v11}, Landroid/util/StatsLog;->write(III)I

    .line 3351
    .end local v3    # "hasVoiceRoamingOff":Z
    .local v40, "hasVoiceRoamingOff":Z
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3352
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v11, 0x12

    if-ne v11, v3, :cond_2c

    .line 3353
    const-string v3, "pollStateDone: IWLAN enabled"

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 3357
    .end local v39    # "tcl":Landroid/telephony/CellLocation;
    .end local v40    # "hasVoiceRoamingOff":Z
    .restart local v3    # "hasVoiceRoamingOff":Z
    .restart local v13    # "tcl":Landroid/telephony/CellLocation;
    :cond_2b
    move/from16 v40, v3

    move-object/from16 v39, v13

    .end local v3    # "hasVoiceRoamingOff":Z
    .end local v13    # "tcl":Landroid/telephony/CellLocation;
    .restart local v39    # "tcl":Landroid/telephony/CellLocation;
    .restart local v40    # "hasVoiceRoamingOff":Z
    :cond_2c
    :goto_1c
    if-nez v5, :cond_2d

    if-eqz v14, :cond_2e

    .line 3365
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RAT change,update signal mSignalStrength = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3366
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;)Z

    .line 3371
    :cond_2e
    if-eqz v4, :cond_2f

    .line 3372
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3373
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkAvailable()V

    .line 3376
    :cond_2f
    if-eqz v7, :cond_30

    .line 3377
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3378
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3381
    :cond_30
    if-eqz v22, :cond_31

    .line 3382
    const/16 v3, 0x7d1

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3385
    :cond_31
    if-eqz v2, :cond_3b

    .line 3386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 3388
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    iget-object v11, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v3, v11}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3390
    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 3391
    .local v3, "prevOperatorNumeric":Ljava/lang/String;
    iget-object v11, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v11

    .line 3392
    .local v11, "prevCountryIsoCode":Ljava/lang/String;
    iget-object v13, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 3394
    .local v13, "operatorNumeric":Ljava/lang/String;
    move/from16 v41, v2

    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .end local v2    # "hasChanged":Z
    .local v41, "hasChanged":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_32

    .line 3396
    invoke-direct {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3397
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v2

    .line 3398
    .local v2, "sid":I
    invoke-direct {v12, v13, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 3402
    .end local v2    # "sid":I
    :cond_32
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v6, v2, v13}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3404
    invoke-direct {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v42, v15

    const-string v15, "operatorNumeric "

    .end local v15    # "hasVoiceRoamingOn":Z
    .local v42, "hasVoiceRoamingOn":Z
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is invalid"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3409
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    const-string v15, ""

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericAsync(Ljava/lang/String;)V

    .line 3410
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3446
    move/from16 v45, v4

    move/from16 v46, v5

    move/from16 v48, v7

    move/from16 v49, v9

    move/from16 v43, v10

    move/from16 v47, v14

    goto/16 :goto_1e

    .line 3411
    .end local v42    # "hasVoiceRoamingOn":Z
    .restart local v15    # "hasVoiceRoamingOn":Z
    :cond_33
    move/from16 v42, v15

    .end local v15    # "hasVoiceRoamingOn":Z
    .restart local v42    # "hasVoiceRoamingOn":Z
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v15, 0x12

    if-eq v2, v15, :cond_36

    .line 3417
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_34

    .line 3418
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 3421
    :cond_34
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericSync(Ljava/lang/String;)V

    .line 3422
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object v2

    .line 3425
    .local v2, "countryIsoCode":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->iccCardExists()Z

    move-result v15

    .line 3426
    .local v15, "iccCardExists":Z
    nop

    .line 3427
    move/from16 v43, v10

    invoke-direct {v12, v2, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->networkCountryIsoChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 3430
    .local v10, "networkIsoChanged":Z
    .local v43, "hasDataRegStateChanged":Z
    if-eqz v15, :cond_35

    if-eqz v10, :cond_35

    const/16 v18, 0x1

    goto :goto_1d

    :cond_35
    const/16 v18, 0x0

    :goto_1d
    move/from16 v44, v18

    .line 3432
    .local v44, "countryChanged":Z
    move/from16 v45, v4

    move/from16 v46, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3433
    .end local v5    # "hasRilVoiceRadioTechnologyChanged":Z
    .local v4, "ctm":J
    .local v45, "hasRegistered":Z
    .local v46, "hasRilVoiceRadioTechnologyChanged":Z
    move/from16 v47, v14

    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14    # "hasRilDataRadioTechnologyChanged":Z
    .local v47, "hasRilDataRadioTechnologyChanged":Z
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v48, v7

    const-string v7, "Before handleNetworkCountryCodeKnown: countryChanged="

    .end local v7    # "hasDeregistered":Z
    .local v48, "hasDeregistered":Z
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v44

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v44    # "countryChanged":Z
    .local v7, "countryChanged":Z
    move/from16 v49, v9

    const-string v9, " iccCardExist="

    .end local v9    # "hasDataDetached":Z
    .local v49, "hasDataDetached":Z
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " countryIsoChanged="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " operatorNumeric="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " prevOperatorNumeric="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " countryIsoCode="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " prevCountryIsoCode="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ltod="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3433
    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3443
    .end local v4    # "ctm":J
    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeSet(Z)V

    .end local v2    # "countryIsoCode":Ljava/lang/String;
    .end local v7    # "countryChanged":Z
    .end local v10    # "networkIsoChanged":Z
    .end local v15    # "iccCardExists":Z
    goto :goto_1e

    .line 3446
    .end local v43    # "hasDataRegStateChanged":Z
    .end local v45    # "hasRegistered":Z
    .end local v46    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v47    # "hasRilDataRadioTechnologyChanged":Z
    .end local v48    # "hasDeregistered":Z
    .end local v49    # "hasDataDetached":Z
    .local v4, "hasRegistered":Z
    .restart local v5    # "hasRilVoiceRadioTechnologyChanged":Z
    .local v7, "hasDeregistered":Z
    .restart local v9    # "hasDataDetached":Z
    .local v10, "hasDataRegStateChanged":Z
    .restart local v14    # "hasRilDataRadioTechnologyChanged":Z
    :cond_36
    move/from16 v45, v4

    move/from16 v46, v5

    move/from16 v48, v7

    move/from16 v49, v9

    move/from16 v43, v10

    move/from16 v47, v14

    .end local v4    # "hasRegistered":Z
    .end local v5    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v7    # "hasDeregistered":Z
    .end local v9    # "hasDataDetached":Z
    .end local v10    # "hasDataRegStateChanged":Z
    .end local v14    # "hasRilDataRadioTechnologyChanged":Z
    .restart local v43    # "hasDataRegStateChanged":Z
    .restart local v45    # "hasRegistered":Z
    .restart local v46    # "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v47    # "hasRilDataRadioTechnologyChanged":Z
    .restart local v48    # "hasDeregistered":Z
    .restart local v49    # "hasDataDetached":Z
    :goto_1e
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    .line 3447
    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    goto :goto_20

    .line 3448
    :cond_37
    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_1f

    .line 3446
    :cond_38
    const/4 v4, 0x0

    goto :goto_20

    .line 3448
    :cond_39
    :goto_1f
    nop

    .line 3446
    const/4 v4, 0x1

    :goto_20
    invoke-virtual {v6, v2, v4}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 3450
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 3451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting ServiceState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3454
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 3455
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3459
    :cond_3a
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3460
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3461
    invoke-static {v5}, Landroid/provider/Telephony$ServiceStateTable;->getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;

    move-result-object v5

    .line 3460
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3463
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    iget-object v5, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .end local v3    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v11    # "prevCountryIsoCode":Ljava/lang/String;
    .end local v13    # "operatorNumeric":Ljava/lang/String;
    goto :goto_21

    .line 3466
    .end local v41    # "hasChanged":Z
    .end local v42    # "hasVoiceRoamingOn":Z
    .end local v43    # "hasDataRegStateChanged":Z
    .end local v45    # "hasRegistered":Z
    .end local v46    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v47    # "hasRilDataRadioTechnologyChanged":Z
    .end local v48    # "hasDeregistered":Z
    .end local v49    # "hasDataDetached":Z
    .local v2, "hasChanged":Z
    .restart local v4    # "hasRegistered":Z
    .restart local v5    # "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v7    # "hasDeregistered":Z
    .restart local v9    # "hasDataDetached":Z
    .restart local v10    # "hasDataRegStateChanged":Z
    .restart local v14    # "hasRilDataRadioTechnologyChanged":Z
    .local v15, "hasVoiceRoamingOn":Z
    :cond_3b
    move/from16 v41, v2

    move/from16 v45, v4

    move/from16 v46, v5

    move/from16 v48, v7

    move/from16 v49, v9

    move/from16 v43, v10

    move/from16 v47, v14

    move/from16 v42, v15

    .end local v2    # "hasChanged":Z
    .end local v4    # "hasRegistered":Z
    .end local v5    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v7    # "hasDeregistered":Z
    .end local v9    # "hasDataDetached":Z
    .end local v10    # "hasDataRegStateChanged":Z
    .end local v14    # "hasRilDataRadioTechnologyChanged":Z
    .end local v15    # "hasVoiceRoamingOn":Z
    .restart local v41    # "hasChanged":Z
    .restart local v42    # "hasVoiceRoamingOn":Z
    .restart local v43    # "hasDataRegStateChanged":Z
    .restart local v45    # "hasRegistered":Z
    .restart local v46    # "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v47    # "hasRilDataRadioTechnologyChanged":Z
    .restart local v48    # "hasDeregistered":Z
    .restart local v49    # "hasDataDetached":Z
    :goto_21
    if-nez v8, :cond_3c

    if-nez v1, :cond_3c

    if-nez v49, :cond_3c

    if-nez v45, :cond_3c

    if-eqz v48, :cond_3d

    .line 3468
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    .line 3473
    :cond_3d
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3474
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 3475
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCardReady()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3476
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->oos_msg_has_send:Z

    if-nez v2, :cond_3e

    .line 3479
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->oos_msg_has_send:Z

    .line 3480
    const/16 v2, 0x64

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 3481
    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3482
    .local v2, "msg":Landroid/os/Message;
    const-wide/16 v3, 0x7530

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3485
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3e
    if-nez v8, :cond_3f

    if-eqz v1, :cond_40

    .line 3486
    :cond_3f
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3489
    :cond_40
    if-eqz v49, :cond_41

    .line 3490
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3493
    :cond_41
    if-nez v47, :cond_42

    if-eqz v46, :cond_43

    .line 3494
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    .line 3497
    :cond_43
    if-nez v43, :cond_44

    if-eqz v47, :cond_46

    .line 3498
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 3500
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3501
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0x12

    if-ne v3, v2, :cond_45

    .line 3502
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v3, "iwlanAvailable"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_22

    .line 3504
    :cond_45
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 3508
    :cond_46
    :goto_22
    if-nez v42, :cond_47

    if-nez v40, :cond_47

    if-nez v35, :cond_47

    if-eqz v34, :cond_48

    .line 3509
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    .line 3512
    :cond_48
    if-eqz v42, :cond_49

    .line 3513
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3516
    :cond_49
    if-eqz v40, :cond_4a

    .line 3517
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3520
    :cond_4a
    if-eqz v35, :cond_4b

    .line 3521
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3524
    :cond_4b
    if-eqz v34, :cond_4c

    .line 3525
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3528
    :cond_4c
    if-eqz v33, :cond_4d

    .line 3529
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    .line 3532
    :cond_4d
    if-eqz v20, :cond_4e

    .line 3534
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3535
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    .line 3534
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 3538
    .local v2, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v3

    .line 3541
    .local v3, "isVolteEnabledByPlatform":Z
    if-eqz v3, :cond_4e

    .line 3543
    iget-object v4, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateImsServiceConfig()V

    .line 3548
    .end local v2    # "imsMgr":Lcom/android/ims/ImsManager;
    .end local v3    # "isVolteEnabledByPlatform":Z
    :cond_4e
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3549
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iget-object v3, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-direct {v12, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 3550
    iget-boolean v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v2, :cond_50

    iget-boolean v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v2, :cond_50

    .line 3551
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3553
    iget-object v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3554
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_register_check_period_ms"

    const v4, 0xea60

    .line 3553
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3557
    .local v2, "check_period":I
    const/16 v3, 0x16

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v12, v3, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3559
    .end local v2    # "check_period":I
    goto :goto_23

    .line 3561
    :cond_4f
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 3564
    :cond_50
    :goto_23
    return-void
.end method

.method private processCellLocationInfo(Landroid/telephony/CellLocation;Landroid/telephony/CellIdentity;)V
    .locals 11
    .param p1, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    const/4 v0, -0x1

    .line 1068
    .local v0, "psc":I
    const/4 v1, -0x1

    .line 1069
    .local v1, "cid":I
    const/4 v2, -0x1

    .line 1070
    .local v2, "lac":I
    if-eqz p2, :cond_1

    .line 1071
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1084
    :pswitch_0
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v1

    .line 1085
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result v2

    .line 1086
    goto :goto_0

    .line 1078
    :pswitch_1
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    .line 1079
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    .line 1080
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v0

    .line 1081
    goto :goto_0

    .line 1089
    :pswitch_2
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    .line 1090
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    .line 1091
    goto :goto_0

    .line 1073
    :cond_0
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    .line 1074
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    .line 1075
    nop

    .line 1099
    :cond_1
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1100
    move-object v3, p1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3, v0}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1101
    .end local v0    # "psc":I
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    goto :goto_2

    .line 1102
    :cond_2
    const/4 v0, -0x1

    .line 1103
    .local v0, "baseStationId":I
    const v1, 0x7fffffff

    .line 1104
    .local v1, "baseStationLatitude":I
    const v2, 0x7fffffff

    .line 1105
    .local v2, "baseStationLongitude":I
    const/4 v3, 0x0

    .line 1106
    .local v3, "systemId":I
    const/4 v4, 0x0

    .line 1108
    .local v4, "networkId":I
    if-eqz p2, :cond_4

    .line 1109
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 1111
    :cond_3
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v0

    .line 1112
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    .line 1113
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v2

    .line 1114
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    .line 1115
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v4

    .line 1116
    nop

    .line 1125
    .end local v3    # "systemId":I
    .end local v4    # "networkId":I
    .local v9, "systemId":I
    .local v10, "networkId":I
    :cond_4
    :goto_1
    move v9, v3

    move v10, v4

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 1126
    const v1, 0x7fffffff

    .line 1127
    const v2, 0x7fffffff

    .line 1131
    :cond_5
    move-object v3, p1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    move v4, v0

    move v5, v1

    move v6, v2

    move v7, v9

    move v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 1134
    .end local v0    # "baseStationId":I
    .end local v1    # "baseStationLatitude":I
    .end local v2    # "baseStationLongitude":I
    .end local v9    # "systemId":I
    .end local v10    # "networkId":I
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .line 4277
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v0, :cond_0

    .line 4280
    return-void

    .line 4285
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4286
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4291
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4292
    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 3748
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regCodeToServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    .line 3734
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 3739
    return v0

    .line 3737
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetOEMSignalLevel()V
    .locals 1

    .line 834
    const-string v0, "resetSignalLevel()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 835
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 836
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 837
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 838
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 839
    return-void
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 4
    .param p1, "source"    # I

    .line 4871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4872
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read from settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "subscription_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4877
    return-void
.end method

.method private selectResourceForRejectCode(IZ)I
    .locals 2
    .param p1, "rejCode"    # I
    .param p2, "multipleSubscriptions"    # Z

    .line 4237
    const/4 v0, 0x0

    .line 4238
    .local v0, "rejResourceId":I
    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 4250
    :pswitch_0
    if-eqz p2, :cond_0

    .line 4251
    const v1, 0x10403dc

    goto :goto_0

    .line 4252
    :cond_0
    const v1, 0x10403db

    :goto_0
    move v0, v1

    .line 4253
    goto :goto_4

    .line 4245
    :pswitch_1
    if-eqz p2, :cond_1

    .line 4246
    const v1, 0x10403de

    goto :goto_1

    .line 4247
    :cond_1
    const v1, 0x10403dd

    :goto_1
    move v0, v1

    .line 4248
    goto :goto_4

    .line 4240
    :pswitch_2
    if-eqz p2, :cond_2

    .line 4241
    const v1, 0x10403d8

    goto :goto_2

    .line 4242
    :cond_2
    const v1, 0x10403d7

    :goto_2
    move v0, v1

    .line 4243
    goto :goto_4

    .line 4255
    :cond_3
    if-eqz p2, :cond_4

    .line 4256
    const v1, 0x10403da

    goto :goto_3

    .line 4257
    :cond_4
    const v1, 0x10403d9

    :goto_3
    move v0, v1

    .line 4258
    nop

    .line 4263
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .locals 7
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 2332
    if-nez p2, :cond_0

    .line 2334
    const-string v0, "Could not set ServiceState channel number. CellIdentity null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2336
    return-void

    .line 2339
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getChannelNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setChannelNumber(I)V

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting channel number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2344
    instance-of v0, p2, Landroid/telephony/CellIdentityLte;

    if-eqz v0, :cond_8

    .line 2345
    move-object v0, p2

    check-cast v0, Landroid/telephony/CellIdentityLte;

    .line 2346
    .local v0, "cl":Landroid/telephony/CellIdentityLte;
    const/4 v1, 0x0

    .line 2349
    .local v1, "bandwidths":[I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 2350
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v1

    .line 2351
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    .line 2352
    .local v5, "bw":I
    invoke-static {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LTE Bandwidth in RegistrationState, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2354
    const/4 v1, 0x0

    .line 2355
    goto :goto_1

    .line 2351
    .end local v5    # "bw":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2369
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    array-length v4, v1

    if-ne v4, v2, :cond_6

    .line 2370
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result v4

    .line 2371
    .local v4, "cbw":I
    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2372
    new-array v2, v2, [I

    aput v4, v2, v3

    move-object v1, v2

    goto :goto_2

    .line 2373
    :cond_4
    const v2, 0x7fffffff

    if-ne v4, v2, :cond_5

    .end local v4    # "cbw":I
    goto :goto_2

    .line 2377
    .restart local v4    # "cbw":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid LTE Bandwidth in RegistrationState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2380
    .end local v4    # "cbw":I
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 2381
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    .line 2383
    .end local v0    # "cl":Landroid/telephony/CellIdentityLte;
    .end local v1    # "bandwidths":[I
    :cond_7
    goto :goto_3

    .line 2384
    :cond_8
    const-string v0, "Skipping bandwidth update for Non-LTE cell."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2386
    :goto_3
    return-void
.end method

.method private setRoamingOff()V
    .locals 2

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2530
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2531
    return-void
.end method

.method private setRoamingOn()V
    .locals 2

    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2522
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2523
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 2525
    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .line 5482
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 5483
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 9
    .param p1, "nitzString"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .line 4031
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4033
    .local v0, "start":J
    const-string v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    invoke-static {p1}, Lcom/android/internal/telephony/NitzData;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;

    move-result-object v2

    .line 4037
    .local v2, "newNitzData":Lcom/android/internal/telephony/NitzData;
    if-eqz v2, :cond_0

    .line 4039
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-direct {v3, v2, p2, p3}, Lcom/android/internal/telephony/util/TimeStampedValue;-><init>(Ljava/lang/Object;J)V

    .line 4041
    .local v3, "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNitzReceived(Lcom/android/internal/telephony/util/TimeStampedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4044
    .end local v3    # "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4045
    .local v3, "end":J
    const-string v5, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NITZ: end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " dur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    .end local v3    # "end":J
    goto :goto_0

    .line 4043
    :catchall_0
    move-exception v3

    .line 4044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4045
    .local v4, "end":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NITZ: end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " dur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v4, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SST"

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    .end local v4    # "end":J
    throw v3

    .line 4049
    :cond_0
    :goto_0
    return-void
.end method

.method private updateLteEarfcnLists(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "config"    # Landroid/os/PersistableBundle;

    .line 4581
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4582
    :try_start_0
    const-string v1, "lte_earfcns_rsrp_boost_int"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    .line 4583
    const-string v1, "boosted_lte_earfcns_string_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4585
    .local v1, "earfcnsStringArrayForRsrpBoost":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 4587
    .end local v1    # "earfcnsStringArrayForRsrpBoost":[Ljava/lang/String;
    monitor-exit v0

    .line 4588
    return-void

    .line 4587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateOperatorNameFromEri()V
    .locals 6

    .line 3567
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const v1, 0x10405d0

    if-eqz v0, :cond_1

    .line 3568
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_9

    .line 3571
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3572
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    .local v0, "eriText":Ljava/lang/String;
    goto :goto_0

    .line 3576
    .end local v0    # "eriText":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3577
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3579
    .restart local v0    # "eriText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3580
    .end local v0    # "eriText":Ljava/lang/String;
    goto/16 :goto_4

    .line 3581
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3582
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 3583
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 3584
    .local v0, "hasBrandOverride":Z
    :goto_1
    if-nez v0, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEriFileLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3585
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3586
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v3, :cond_8

    .line 3590
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v3

    .line 3592
    .local v3, "eriText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_4

    .line 3593
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3594
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 3595
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    move-object v3, v1

    .line 3596
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3599
    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3601
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_7

    .line 3604
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3605
    invoke-virtual {v4, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3607
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3610
    .end local v3    # "eriText":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_9

    .line 3611
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3612
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3616
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3617
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v1

    .line 3618
    .local v1, "showSpn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    .line 3620
    .local v3, "iconIndex":I
    if-eqz v1, :cond_9

    if-ne v3, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3621
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_9

    .line 3623
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3627
    .end local v0    # "hasBrandOverride":Z
    .end local v1    # "showSpn":Z
    .end local v3    # "iconIndex":I
    :cond_9
    :goto_4
    return-void
.end method

.method private updateReportingCriteria(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "config"    # Landroid/os/PersistableBundle;

    .line 4591
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "lte_rsrp_thresholds_int_array"

    .line 4592
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 4591
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria([II)V

    .line 4594
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "wcdma_rscp_thresholds_int_array"

    .line 4595
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 4594
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria([II)V

    .line 4597
    return-void
.end method

.method private updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "lteEarfcn"    # I

    .line 4600
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4601
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 4602
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4603
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setLteEarfcnRsrpBoost(I)V

    goto :goto_0

    .line 4607
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4605
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setLteEarfcnRsrpBoost(I)V

    .line 4607
    :goto_0
    monitor-exit v0

    .line 4608
    return-void

    .line 4607
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected OEMnotifySignalStrength()Z
    .locals 4

    .line 5234
    const/4 v0, 0x0

    .line 5236
    .local v0, "notified":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V

    .line 5238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEMnotifySignalStrength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5240
    const/4 v0, 0x1

    .line 5243
    goto :goto_0

    .line 5241
    :catch_0
    move-exception v1

    .line 5242
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEMnotifySignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 5244
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    return v0
.end method

.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 5538
    const-string v0, "force_home_network_bool"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected cancelPollState()V
    .locals 1

    .line 4755
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 4756
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .line 5041
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5045
    return-void

    .line 5042
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "earfcnsList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4528
    .local v0, "earfcnPairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_2

    .line 4531
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 4533
    const/4 v3, 0x0

    :try_start_0
    aget-object v4, p1, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4534
    .local v4, "earfcns":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 4536
    const-string v1, "Invalid earfcn range format"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4538
    return-object v3

    .line 4541
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4542
    .local v5, "earfcnStart":I
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4544
    .local v6, "earfcnEnd":I
    if-le v5, v6, :cond_1

    .line 4546
    const-string v1, "Invalid earfcn range format"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4548
    return-object v3

    .line 4551
    :cond_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4562
    .end local v4    # "earfcns":[Ljava/lang/String;
    nop

    .line 4561
    nop

    .line 4531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4557
    .end local v5    # "earfcnStart":I
    .end local v6    # "earfcnEnd":I
    :catch_0
    move-exception v1

    .line 4559
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid earfcn number format"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4561
    return-object v3

    .line 4552
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 4554
    .local v1, "pse":Ljava/util/regex/PatternSyntaxException;
    const-string v4, "Invalid earfcn range format"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4556
    return-object v3

    .line 4566
    .end local v1    # "pse":Ljava/util/regex/PatternSyntaxException;
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public disableLocationUpdates()V
    .locals 3

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 1060
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1063
    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 1053
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 818
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->unregisterForCarrierAction(Landroid/os/Handler;I)V

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->dispose()V

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 828
    :cond_0
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 830
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4932
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4939
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4938
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCellInfoListTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4950
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpCellInfoList(Ljava/io/PrintWriter;)V

    .line 4951
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4960
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4961
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/NitzStateMachine;->dumpState(Ljava/io/PrintWriter;)V

    .line 4962
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurDataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistrationOnOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAlarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRadioDisabledByCarrier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPowerOffDelayNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLteRsrpBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpEarfcnPairList(Ljava/io/PrintWriter;)V

    .line 4999
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocaleTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5001
    const-string v0, " Roaming Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5002
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5003
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5004
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5005
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5007
    const-string v1, " Attach Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5009
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5010
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5012
    const-string v1, " Phone Change Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5013
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5014
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5015
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5017
    const-string v1, " Rat Change Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5019
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5020
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5022
    const-string v1, " Radio power Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5024
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5026
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/NitzStateMachine;->dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 5027
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .line 1046
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1049
    return-void

    .line 1046
    :cond_1
    :goto_0
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .line 1040
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1043
    return-void

    .line 1040
    :cond_1
    :goto_0
    return-void
.end method

.method public getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 8
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 4799
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    .line 4800
    .local v0, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    const-string v2, "SST.getAllCellInfo(): E"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4801
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v2

    .line 4802
    .local v2, "ver":I
    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 4803
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 4806
    const/16 v3, 0x2b

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4807
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 4808
    :try_start_0
    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 4809
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4811
    :try_start_1
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4814
    goto :goto_0

    .line 4812
    :catch_0
    move-exception v5

    .line 4813
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4815
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4

    .line 4816
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 4815
    .restart local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4817
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    const-string v3, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4818
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 4821
    :cond_1
    const-string v3, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4822
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 4825
    :cond_2
    const-string v3, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4826
    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 4828
    :goto_1
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 4829
    :try_start_3
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 4830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST.getAllCellInfo(): X size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " list="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4832
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    monitor-exit v3

    return-object v1

    .line 4834
    :cond_3
    const-string v4, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4835
    monitor-exit v3

    return-object v1

    .line 4837
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCellLocation(Landroid/os/WorkSource;)Landroid/telephony/CellLocation;
    .locals 8
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3961
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 3962
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3964
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    return-object v0

    .line 3966
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v0

    .line 3967
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v0, :cond_6

    .line 3980
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 3981
    .local v1, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 3982
    .local v3, "ci":Landroid/telephony/CellInfo;
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_1

    .line 3983
    move-object v2, v3

    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 3984
    .local v2, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    .line 3985
    .local v4, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    .line 3986
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    .line 3985
    invoke-virtual {v1, v5, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3987
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCellLocation(): X ret GSM info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3989
    return-object v1

    .line 3990
    .end local v2    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    .end local v4    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    :cond_1
    instance-of v4, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_2

    .line 3991
    move-object v2, v3

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 3992
    .local v2, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    .line 3993
    .local v4, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    .line 3994
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    .line 3993
    invoke-virtual {v1, v5, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3995
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCellLocation(): X ret WCDMA info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3997
    return-object v1

    .line 3998
    .end local v2    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    .end local v4    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    :cond_2
    instance-of v4, v3, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_4

    .line 3999
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-gez v4, :cond_4

    .line 4001
    :cond_3
    move-object v4, v3

    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 4002
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 4003
    .local v5, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    .line 4004
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    if-eq v6, v7, :cond_4

    .line 4005
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    .line 4006
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    .line 4005
    invoke-virtual {v1, v6, v7}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4007
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 4009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellLocation(): possible LTE cellLocOther="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4013
    .end local v3    # "ci":Landroid/telephony/CellInfo;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v5    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    :cond_4
    goto/16 :goto_0

    .line 4015
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellLocation(): X ret best answer cellLocOther="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4017
    return-object v1

    .line 4020
    .end local v1    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4022
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    return-object v1
.end method

.method protected getCombinedRegState()I
    .locals 6

    .line 5586
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    .line 5587
    .local v0, "regState":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 5590
    .local v1, "dataRegState":I
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x54

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5591
    const-string v3, "gsm.ims.register.wifi"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCombinedRegState: Support Ust feature, only return Voice state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5593
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5592
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5594
    return v0

    .line 5595
    :cond_0
    const-string v3, "gsm.ims.register.wifi"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5596
    const-string v3, "getCombinedRegState: Support Ust feature, but register on Vowifi, use combine state"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5600
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    if-nez v1, :cond_3

    .line 5603
    const-string v2, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5604
    move v0, v1

    .line 5606
    :cond_3
    return v0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .line 2905
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 3

    .line 5486
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 5487
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 5488
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5489
    .local v0, "numeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5490
    const-string v1, "ro.cdma.home.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5492
    :cond_0
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 3

    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 1819
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1820
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1822
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1825
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;
    .locals 1

    .line 5718
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNitzState()Lcom/android/internal/telephony/NitzStateMachine;
    .locals 1

    .line 4055
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    return-object v0
.end method

.method protected getOEMLevel(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)[I
    .locals 3
    .param p1, "st"    # Landroid/telephony/ServiceState;
    .param p2, "s"    # Landroid/telephony/SignalStrength;

    .line 5186
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/telephony/SignalStrength;->getOEMSmoothSignalLevel(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 5188
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 5189
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    goto :goto_0

    .line 5187
    :goto_1
    invoke-virtual {p2, v1}, Landroid/telephony/SignalStrength;->getOEMSmoothSignalLevel(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 5186
    return-object v0
.end method

.method protected getOemRegState(Landroid/telephony/ServiceState;)I
    .locals 3
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 575
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    .line 576
    .local v0, "regState":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 578
    .local v1, "dataRegState":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 580
    move v0, v1

    .line 583
    :cond_0
    return v0
.end method

.method public getOtasp()I
    .locals 5

    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1845
    const-string v0, "getOtasp: otasp uninitialized due to sim not loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1846
    return v1

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 1850
    const-string v0, "getOtasp: otasp not needed for GSM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1851
    return v2

    .line 1854
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1855
    const/4 v0, 0x2

    return v0

    .line 1857
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_3

    goto :goto_1

    .line 1861
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v4, "1111110111"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1862
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "test_cdma_setup"

    .line 1863
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1866
    :cond_4
    goto :goto_2

    .line 1864
    :cond_5
    :goto_0
    const/4 v2, 0x2

    goto :goto_2

    .line 1858
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOtasp: bad mMin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1859
    const/4 v2, 0x1

    .line 1866
    .local v2, "provisioningState":I
    :goto_2
    move v0, v2

    .line 1869
    .end local v2    # "provisioningState":I
    .local v0, "provisioningState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1870
    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method protected getPhoneId()I
    .locals 1

    .line 5496
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPowerStateFromCarrier()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 4844
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 4792
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1160
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_27

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x3

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1

    const/16 v4, 0x14

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_2

    const/16 v5, 0xe

    packed-switch v0, :pswitch_data_3

    const/4 v8, 0x4

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1756
    :pswitch_0
    const-string v0, "persist.radio.ddssim.rat"

    .line 1757
    .local v0, "DDS_NETWORK_TYPE":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1758
    .local v1, "network_type":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1759
    goto/16 :goto_9

    .line 1742
    .end local v0    # "DDS_NETWORK_TYPE":Ljava/lang/String;
    .end local v1    # "network_type":I
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1743
    .local v0, "mSubSC":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 1744
    .local v1, "subid":I
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 1745
    .local v2, "phoneId":I
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 1746
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1748
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1752
    :cond_0
    const/16 v4, 0x3ea

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1753
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1754
    goto/16 :goto_9

    .line 1750
    :cond_1
    :goto_0
    return-void

    .line 1263
    .end local v0    # "mSubSC":Lcom/android/internal/telephony/SubscriptionController;
    .end local v1    # "subid":I
    .end local v2    # "phoneId":I
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, -0x65

    .line 1265
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getOEMLevel(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)[I

    move-result-object v1

    .line 1266
    .local v1, "levels":[I
    aget v4, v1, v2

    .line 1267
    .local v4, "curLevel_voice":I
    aget v5, v1, v3

    .line 1270
    .local v5, "curLevel_data":I
    if-nez v0, :cond_6

    .line 1271
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v6, v9, :cond_2

    .line 1273
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1274
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 1275
    return-void

    .line 1278
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-le v2, v6, :cond_4

    .line 1280
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1283
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v2

    .line 1284
    .local v2, "rat":I
    if-eq v2, v8, :cond_3

    if-ne v2, v7, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    if-ge v3, v7, :cond_4

    .line 1285
    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1289
    .end local v2    # "rat":I
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    if-ge v2, v4, :cond_5

    .line 1290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update to current level mOEMLastLevel_voice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", curLevel_voice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1291
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1295
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iput v3, v2, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    goto :goto_1

    .line 1296
    :cond_6
    if-ne v0, v3, :cond_c

    .line 1297
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v6, v9, :cond_7

    .line 1299
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1300
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 1301
    return-void

    .line 1304
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-le v6, v9, :cond_9

    .line 1306
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1308
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v3

    .line 1309
    .local v3, "rat":I
    if-eq v3, v8, :cond_8

    if-ne v3, v7, :cond_9

    :cond_8
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    if-ge v6, v7, :cond_9

    .line 1310
    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1315
    .end local v3    # "rat":I
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-nez v3, :cond_a

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    if-lez v3, :cond_a

    .line 1316
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1319
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    if-ge v2, v5, :cond_b

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOEMLastLevel_data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", curLevel_data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1321
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1325
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iput v3, v2, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 1328
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    .line 1331
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySmoothLevel(I)V

    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_OEM_SMOOTH (last:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") current:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1334
    goto/16 :goto_9

    .line 1256
    .end local v0    # "index":I
    .end local v1    # "levels":[I
    .end local v4    # "curLevel_voice":I
    .end local v5    # "curLevel_data":I
    :pswitch_3
    const-string v0, "EVENT_OUT_OF_SERVICE_NOTIFY2UI"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleOutOfService()V

    .line 1258
    goto/16 :goto_9

    .line 1719
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1720
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1721
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1723
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PHYSICAL_CHANNEL_CONFIG: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1726
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhysicalChannelConfiguration(Ljava/util/List;)V

    .line 1727
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1730
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1731
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1733
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :cond_d
    goto/16 :goto_9

    .line 1246
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    const-string v0, "EVENT_RADIO_POWER_OFF_DONE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 1573
    :pswitch_6
    const-string v0, "EVENT_IMS_SERVICE_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_29

    .line 1577
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_9

    .line 1540
    :pswitch_7
    const-string v0, "EVENT_SIM_NOT_INSERTED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1541
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelAllNotifications()V

    .line 1542
    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1543
    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1544
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1545
    goto/16 :goto_9

    .line 1710
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1711
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1712
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1713
    .local v1, "enable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_POWER_FROM_CARRIER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerFromCarrier(Z)V

    .line 1715
    .end local v1    # "enable":Z
    goto/16 :goto_9

    .line 1548
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1549
    .local v0, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 1550
    monitor-enter p0

    .line 1551
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v1, :cond_e

    .line 1552
    const-string v1, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1554
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_2

    .line 1556
    :cond_e
    const-string v1, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1558
    :goto_2
    monitor-exit p0

    .line 1559
    goto/16 :goto_9

    .line 1558
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1568
    .end local v0    # "dds":I
    :pswitch_a
    const-string v0, "EVENT_IMS_CAPABILITY_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 1570
    goto/16 :goto_9

    .line 1228
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1229
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1231
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_f

    .line 1233
    return-void

    .line 1236
    :cond_f
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1238
    .local v1, "responseArray":[I
    array-length v4, v1

    if-lt v4, v3, :cond_11

    .line 1239
    aget v4, v1, v2

    if-ne v4, v3, :cond_10

    move v2, v3

    nop

    :cond_10
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 1242
    .end local v1    # "responseArray":[I
    :cond_11
    goto/16 :goto_9

    .line 1224
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 1225
    goto/16 :goto_9

    .line 1562
    :pswitch_d
    const-string v0, "EVENT_CHANGE_IMS_STATE:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1565
    goto/16 :goto_9

    .line 1208
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1209
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1212
    :cond_12
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1214
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UNSOL_CELL_INFO_LIST: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 1217
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1218
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCellInfo(Ljava/util/List;)V

    .line 1220
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    goto/16 :goto_9

    .line 1186
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1187
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    .line 1188
    .local v1, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1189
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1191
    iput-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_3

    .line 1193
    :cond_13
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CELL_INFO_LIST: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " list="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1200
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 1201
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1202
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1203
    monitor-exit v3

    .line 1204
    goto/16 :goto_9

    .line 1203
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1177
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 1178
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1179
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_29

    .line 1180
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_9

    .line 1702
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1703
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1704
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1705
    .local v1, "ints":[I
    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_9

    .line 1583
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ints":[I
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1584
    goto/16 :goto_9

    .line 1162
    :pswitch_13
    monitor-enter p0

    .line 1163
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v0, v1, :cond_14

    .line 1165
    const-string v0, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1167
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 1168
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_4

    .line 1170
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!= tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1173
    :goto_4
    monitor-exit p0

    .line 1174
    goto/16 :goto_9

    .line 1173
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1689
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1690
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1691
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1692
    .restart local v1    # "ints":[I
    aget v2, v1, v2

    .line 1693
    .local v2, "otaStatus":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_15

    const/16 v3, 0xa

    if-ne v2, v3, :cond_16

    .line 1695
    :cond_15
    const-string v3, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1696
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1698
    .end local v2    # "otaStatus":I
    :cond_16
    goto/16 :goto_9

    .line 1684
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ints":[I
    :pswitch_15
    const-string v0, "ERI file has been loaded, repolling."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1686
    goto/16 :goto_9

    .line 1602
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1610
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1611
    goto/16 :goto_9

    .line 1614
    :pswitch_17
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1615
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1617
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_29

    .line 1618
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 1619
    .local v4, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v4, :cond_18

    array-length v5, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_18

    .line 1620
    aget-object v2, v4, v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1621
    aget-object v2, v4, v3

    aget-object v5, v4, v7

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    aget-object v1, v4, v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1624
    aget-object v1, v4, v8

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1627
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1631
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1633
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_17

    .line 1635
    const-string v1, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1637
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    goto :goto_5

    .line 1640
    :cond_17
    const-string v1, "GET_CDMA_SUBSCRIPTION either mIccRecords is null or NV type device - not setting Imsi in mIccRecords"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1646
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1650
    .end local v4    # "cdmaSubscription":[Ljava/lang/String;
    :goto_5
    goto/16 :goto_9

    .line 1655
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RUIM_RECORDS_LOADED: what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_9

    .line 1661
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1662
    .local v0, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_1b

    .line 1663
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1664
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1665
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1668
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1670
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1672
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1677
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1678
    .end local v0    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    goto/16 :goto_9

    .line 1587
    :pswitch_19
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 1589
    const-string v0, "Receive EVENT_RUIM_READY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto :goto_6

    .line 1592
    :cond_1c
    const-string v0, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1593
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1597
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1599
    goto/16 :goto_9

    .line 1527
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1531
    const-string v0, "EVENT_RESTRICTED_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1533
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1535
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 1512
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1513
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1519
    .local v0, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v1, 0xc3bb

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1520
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    nop

    :cond_1d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1519
    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1521
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1523
    .end local v0    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_1e
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1524
    goto/16 :goto_9

    .line 1488
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1489
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_29

    .line 1490
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1492
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 1481
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1483
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x15

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1484
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1485
    goto/16 :goto_9

    .line 1497
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1499
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1f

    .line 1500
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_7

    .line 1502
    :cond_1f
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    .line 1505
    :goto_7
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1506
    .restart local v1    # "message":Landroid/os/Message;
    const/4 v2, 0x7

    .line 1508
    .local v2, "toggledNetworkType":I
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1509
    goto/16 :goto_9

    .line 1471
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "toggledNetworkType":I
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1473
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_29

    .line 1474
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/16 v2, 0xf

    .line 1476
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1475
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getNetworkRegistrationState(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 1348
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_20
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1350
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 1351
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1352
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1354
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1355
    goto/16 :goto_9

    .line 1462
    :pswitch_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1464
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1466
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_9

    .line 1397
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1398
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_20

    .line 1399
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/NetworkRegistrationState;

    .line 1400
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 1401
    .local v1, "cellIdentity":Landroid/telephony/CellIdentity;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->processCellLocationInfo(Landroid/telephony/CellLocation;Landroid/telephony/CellIdentity;)V

    .line 1402
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    .line 1407
    .end local v1    # "cellIdentity":Landroid/telephony/CellIdentity;
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    .line 1408
    goto/16 :goto_9

    .line 1418
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_23
    const-string v0, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1420
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1421
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 1423
    :cond_21
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_22

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_22

    .line 1424
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1425
    .local v1, "ints":[I
    aget v2, v1, v2

    if-ne v2, v3, :cond_29

    .line 1426
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 1429
    .end local v1    # "ints":[I
    :cond_22
    const-string v1, "Unable to getNetworkSelectionMode"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1432
    goto/16 :goto_9

    .line 1452
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1456
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 1458
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    .line 1459
    goto/16 :goto_9

    .line 1441
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1443
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    .line 1444
    .local v1, "nitzString":Ljava/lang/String;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1446
    .local v2, "nitzReceiveTime":J
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    .line 1447
    goto/16 :goto_9

    .line 1437
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "nitzString":Ljava/lang/String;
    .end local v2    # "nitzReceiveTime":J
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1438
    goto/16 :goto_9

    .line 1413
    :pswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1414
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    .line 1415
    goto/16 :goto_9

    .line 1380
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1382
    return-void

    .line 1385
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_8

    .line 1390
    :cond_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1391
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    .line 1392
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1394
    goto :goto_9

    .line 1386
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_25
    :goto_8
    const-string v0, "EVENT_GET_SIGNAL_STRENGTH hasIccCard() false return"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1387
    return-void

    .line 1373
    :pswitch_29
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    .line 1374
    goto :goto_9

    .line 1359
    :pswitch_2a
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1360
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_26

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1364
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1367
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1369
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    .line 1370
    goto :goto_9

    .line 1737
    :cond_27
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->bCheckNoServiceAgain:Z

    .line 1738
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1740
    goto :goto_9

    .line 1339
    :cond_28
    const-string v0, "EVENT_FAKE_UI_TIMEOUT, stop fake UI"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setFakeUIPeriod(Z)V

    .line 1341
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1342
    nop

    .line 1766
    :cond_29
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_2a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1921
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    if-eq v0, v1, :cond_0

    return-void

    .line 1923
    :cond_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 1924
    const/4 v0, 0x0

    .line 1926
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_1

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePollStateResult exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1930
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 1931
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1934
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_3

    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 1937
    return-void

    .line 1940
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1944
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    goto :goto_0

    .line 1945
    :cond_5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    goto :goto_0

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1950
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v0, v0, v1

    if-nez v0, :cond_16

    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1954
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1955
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    goto/16 :goto_4

    .line 1957
    :cond_6
    const/4 v0, 0x0

    .line 1958
    .local v0, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isHomeSid(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1959
    const/4 v0, 0x1

    .line 1963
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v2, :cond_8

    .line 1964
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1965
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1964
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v2

    .line 1966
    .local v2, "isRoamingBetweenOperators":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eq v2, v4, :cond_8

    .line 1967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingBetweenOperators="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". Override CDMA voice roaming to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1969
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1978
    .end local v2    # "isRoamingBetweenOperators":Z
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 1979
    .local v2, "dataRat":I
    invoke-static {v2}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1980
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1981
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_9

    move v1, v3

    nop

    .line 1982
    .local v1, "isVoiceInService":Z
    :cond_9
    if-eqz v1, :cond_b

    .line 1983
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    .line 1984
    .local v4, "isVoiceRoaming":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eq v5, v4, :cond_a

    .line 1985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1987
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1989
    .end local v4    # "isVoiceRoaming":Z
    :cond_a
    goto :goto_1

    .line 1995
    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    .line 1996
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1995
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v4

    .line 1997
    .local v4, "isRoamIndForHomeSystem":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-ne v5, v4, :cond_c

    .line 1998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoamIndForHomeSystem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", override data roaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2000
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2006
    .end local v1    # "isVoiceInService":Z
    .end local v4    # "isRoamIndForHomeSystem":Z
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 2007
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 2008
    const/4 v1, 0x1

    .line 2009
    .local v1, "isPrlLoaded":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2010
    const/4 v1, 0x0

    .line 2012
    :cond_d
    if-eqz v1, :cond_14

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    .line 2016
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2017
    if-nez v0, :cond_f

    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v4, :cond_f

    .line 2019
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 2020
    :cond_f
    const/4 v4, 0x2

    if-eqz v0, :cond_11

    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_11

    .line 2022
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2023
    const-string v4, "Turn off roaming indicator as voice is LTE"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2024
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 2026
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 2028
    :cond_11
    if-nez v0, :cond_12

    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_12

    .line 2030
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 2033
    :cond_12
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    if-gt v5, v4, :cond_13

    .line 2034
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 2037
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 2014
    :cond_14
    :goto_2
    const-string v4, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2015
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 2042
    :cond_15
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v3

    .line 2043
    .local v3, "roamingIndicator":I
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2045
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 2052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". voiceRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2053
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". dataRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2054
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPrlLoaded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". namMatch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mIsInPrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mRoamingIndicator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mDefaultRoamingIndicator= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2052
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2061
    .end local v0    # "namMatch":Z
    .end local v1    # "isPrlLoaded":Z
    .end local v2    # "dataRat":I
    .end local v3    # "roamingIndicator":I
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    .line 2064
    :cond_16
    return-void
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 18
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2079
    move-object/from16 v2, p2

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v3, :cond_18

    const/4 v3, 0x3

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    .line 2312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResultMessage: Unexpected RIL response received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2242
    :pswitch_0
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2243
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    .line 2245
    .local v8, "opNames":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v9, v8

    if-lt v9, v3, :cond_2

    .line 2247
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2249
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2248
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 2249
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_0
    move-object v3, v4

    .line 2250
    .local v3, "brandOverride":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2252
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v7

    invoke-virtual {v4, v3, v3, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2254
    :cond_1
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v5

    aget-object v6, v8, v6

    aget-object v7, v8, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    .end local v3    # "brandOverride":Ljava/lang/String;
    .end local v8    # "opNames":[Ljava/lang/String;
    :cond_2
    :goto_0
    goto/16 :goto_9

    .line 2258
    :cond_3
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    .line 2260
    .restart local v8    # "opNames":[Ljava/lang/String;
    if-eqz v8, :cond_9

    array-length v9, v8

    if-lt v9, v3, :cond_9

    .line 2263
    aget-object v3, v8, v7

    if-eqz v3, :cond_4

    aget-object v3, v8, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x5

    if-lt v3, v9, :cond_4

    const-string v3, "00000"

    aget-object v9, v8, v7

    .line 2264
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2265
    :cond_4
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v9, "00000"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    .line 2268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v8, v7

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2275
    :cond_5
    iget-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v3, :cond_6

    .line 2277
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v4, v8, v5

    aget-object v5, v8, v6

    aget-object v6, v8, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2279
    :cond_6
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2281
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2280
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 2281
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_7
    move-object v3, v4

    .line 2282
    .restart local v3    # "brandOverride":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 2283
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v7

    invoke-virtual {v4, v3, v3, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2285
    :cond_8
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v5

    aget-object v6, v8, v6

    aget-object v7, v8, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    .end local v3    # "brandOverride":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 2289
    :cond_9
    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2292
    .end local v8    # "opNames":[Ljava/lang/String;
    :goto_2
    goto/16 :goto_9

    .line 2160
    :pswitch_1
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/NetworkRegistrationState;

    .line 2161
    .local v5, "networkRegState":Landroid/telephony/NetworkRegistrationState;
    nop

    .line 2162
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getDataSpecificStates()Landroid/telephony/DataSpecificRegistrationStates;

    move-result-object v7

    .line 2163
    .local v7, "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationStates;
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getRegState()I

    move-result v8

    .line 2164
    .local v8, "registrationState":I
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    .line 2165
    .local v9, "serviceState":I
    nop

    .line 2166
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getAccessNetworkTechnology()I

    move-result v10

    .line 2165
    invoke-static {v10}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v10

    .line 2167
    .local v10, "newDataRat":I
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v9}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2168
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v10}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 2169
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v5}, Landroid/telephony/ServiceState;->addNetworkRegistrationState(Landroid/telephony/NetworkRegistrationState;)V

    .line 2174
    if-ne v9, v6, :cond_a

    .line 2175
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 2177
    :cond_a
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 2179
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2181
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getReasonForDenial()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 2182
    iget v3, v7, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 2183
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    .line 2186
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlPollStateResultMessage: GsmSST dataServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " regState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dataRadioTechnology="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2193
    :cond_b
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2195
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    .line 2196
    .local v3, "isDataRoaming":Z
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2199
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlPollStateResultMessage: cdma dataServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " regState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dataRadioTechnology="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2206
    .end local v3    # "isDataRoaming":Z
    goto :goto_3

    .line 2214
    :cond_c
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .line 2215
    .local v4, "oldDataRAT":I
    if-nez v4, :cond_d

    if-nez v10, :cond_f

    .line 2217
    :cond_d
    invoke-static {v4}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v10}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2218
    :cond_e
    invoke-static {v4}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2219
    invoke-static {v10}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2220
    :cond_f
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 2224
    :cond_10
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    .line 2225
    .restart local v3    # "isDataRoaming":Z
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2228
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlPollStateResultMessage: CdmaLteSST dataServiceState="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " registrationState="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " dataRadioTechnology="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2236
    .end local v3    # "isDataRoaming":Z
    .end local v4    # "oldDataRAT":I
    :goto_3
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2237
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getLteEarfcn(Landroid/telephony/CellIdentity;)I

    move-result v4

    .line 2236
    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V

    .line 2238
    goto/16 :goto_9

    .line 2081
    .end local v5    # "networkRegState":Landroid/telephony/NetworkRegistrationState;
    .end local v7    # "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationStates;
    .end local v8    # "registrationState":I
    .end local v9    # "serviceState":I
    .end local v10    # "newDataRat":I
    :pswitch_2
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/NetworkRegistrationState;

    .line 2082
    .local v4, "networkRegState":Landroid/telephony/NetworkRegistrationState;
    nop

    .line 2083
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getVoiceSpecificStates()Landroid/telephony/VoiceSpecificRegistrationStates;

    move-result-object v8

    .line 2085
    .local v8, "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationStates;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getRegState()I

    move-result v9

    .line 2086
    .local v9, "registrationState":I
    iget-boolean v10, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    .line 2087
    .local v10, "cssIndicator":I
    nop

    .line 2088
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getAccessNetworkTechnology()I

    move-result v11

    .line 2087
    invoke-static {v11}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v11

    .line 2090
    .local v11, "newVoiceRat":I
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 2091
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v10}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 2092
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v11}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2093
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationState(Landroid/telephony/NetworkRegistrationState;)V

    .line 2094
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 2097
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getReasonForDenial()I

    move-result v12

    .line 2098
    .local v12, "reasonForDenial":I
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->isEmergencyEnabled()Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 2099
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2101
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    .line 2102
    iput v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    .line 2104
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11200d1

    .line 2105
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 2106
    goto/16 :goto_7

    .line 2107
    :cond_11
    iget v13, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    .line 2110
    .local v13, "roamingIndicator":I
    iget v14, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    .line 2113
    .local v14, "systemIsInPrl":I
    iget v15, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    .line 2115
    .local v15, "defaultRoamingIndicator":I
    iput v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 2119
    nop

    .line 2120
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 2122
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2121
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v6

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    .line 2123
    .local v5, "cdmaRoaming":Z
    :goto_4
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2124
    iput v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    .line 2125
    if-nez v14, :cond_13

    const/4 v3, 0x0

    goto :goto_5

    :cond_13
    move v3, v6

    :goto_5
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    .line 2126
    iput v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 2128
    const/4 v3, 0x0

    .line 2129
    .local v3, "systemId":I
    const/16 v16, 0x0

    .line 2130
    .local v16, "networkId":I
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    .line 2131
    .local v6, "cellIdentity":Landroid/telephony/CellIdentity;
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    if-ne v1, v7, :cond_14

    .line 2132
    move-object v1, v6

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    .line 2133
    move-object v1, v6

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v16

    .line 2135
    .end local v16    # "networkId":I
    .local v1, "networkId":I
    :cond_14
    move/from16 v1, v16

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v3, v1}, Landroid/telephony/ServiceState;->setCdmaSystemAndNetworkId(II)V

    .line 2137
    if-nez v12, :cond_15

    .line 2138
    const-string v7, "General"

    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_6

    .line 2139
    :cond_15
    const/4 v7, 0x1

    if-ne v12, v7, :cond_16

    .line 2140
    const-string v7, "Authentication Failure"

    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_6

    .line 2142
    :cond_16
    const-string v7, ""

    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 2145
    :goto_6
    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    move/from16 v17, v1

    const/4 v1, 0x3

    if-ne v7, v1, :cond_17

    .line 2146
    .end local v1    # "networkId":I
    .local v17, "networkId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registration denied, "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2150
    .end local v3    # "systemId":I
    .end local v5    # "cdmaRoaming":Z
    .end local v6    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v13    # "roamingIndicator":I
    .end local v14    # "systemIsInPrl":I
    .end local v15    # "defaultRoamingIndicator":I
    .end local v17    # "networkId":I
    :cond_17
    :goto_7
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->processCellLocationInfo(Landroid/telephony/CellLocation;Landroid/telephony/CellIdentity;)V

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlPollVoiceRegResultMessage: regState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " radioTechnology="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2156
    goto :goto_9

    .line 2296
    .end local v4    # "networkRegState":Landroid/telephony/NetworkRegistrationState;
    .end local v8    # "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationStates;
    .end local v9    # "registrationState":I
    .end local v10    # "cssIndicator":I
    .end local v11    # "newVoiceRat":I
    .end local v12    # "reasonForDenial":I
    :cond_18
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2297
    .local v1, "ints":[I
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    aget v6, v1, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    move v6, v7

    goto :goto_8

    :cond_19
    move v6, v5

    :goto_8
    invoke-virtual {v3, v6}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2298
    aget v3, v1, v5

    if-ne v3, v7, :cond_1a

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->shouldForceAutoNetworkSelect()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2304
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2305
    const-string v3, " Forcing Automatic Network Selection, manual selection is not allowed"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2314
    .end local v1    # "ints":[I
    :cond_1a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .line 4742
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4743
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4744
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4745
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4748
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x36

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4750
    return-void
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 9
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 5337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto/16 :goto_4

    .line 5344
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 5345
    .local v0, "homeNumeric":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 5346
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5347
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    array-length v5, v3

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    .line 5348
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    aget-object v0, v3, v4

    .line 5352
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_2

    goto :goto_3

    .line 5356
    :cond_2
    const/4 v2, 0x1

    .line 5357
    .local v2, "inSameCountry":Z
    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5358
    .local v4, "networkMCC":Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5359
    .local v3, "homeMCC":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 5360
    .local v5, "networkCountry":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    .line 5361
    .local v6, "homeCountry":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 5365
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 5368
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v8, 0x54

    aput v8, v7, v1

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5370
    const-string v1, "inSameCountry() keep check roaming type"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5374
    :cond_4
    if-eqz v2, :cond_5

    .line 5375
    return v2

    .line 5379
    :cond_5
    :goto_0
    const-string v1, "us"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "vi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5380
    const/4 v2, 0x1

    goto :goto_1

    .line 5381
    :cond_6
    const-string v1, "vi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "us"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5382
    const/4 v2, 0x1

    .line 5384
    :cond_7
    :goto_1
    return v2

    .line 5363
    :cond_8
    :goto_2
    return v1

    .line 5354
    .end local v2    # "inSameCountry":Z
    .end local v3    # "homeMCC":Ljava/lang/String;
    .end local v4    # "networkMCC":Ljava/lang/String;
    .end local v5    # "networkCountry":Ljava/lang/String;
    .end local v6    # "homeCountry":Ljava/lang/String;
    :cond_9
    :goto_3
    return v1

    .line 5339
    .end local v0    # "homeNumeric":Ljava/lang/String;
    :cond_a
    :goto_4
    return v1
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    .line 5048
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5049
    .local v0, "value":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallerOnDifferentThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5050
    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 4

    .line 2913
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2915
    return v1

    .line 2916
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2917
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 2919
    :cond_2
    return v2
.end method

.method public isDeviceShuttingDown()Z
    .locals 1

    .line 5579
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    return v0
.end method

.method protected isFakeUIPeriod()Z
    .locals 1

    .line 5713
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFakeUIPeriod:Z

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .line 5030
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .line 1835
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 5574
    const-string v0, "cdma_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 5566
    const-string v0, "gsm_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isOtherPhoneOffhook()Z
    .locals 2

    .line 5705
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 2

    .line 2952
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 5570
    const-string v0, "cdma_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 5562
    const-string v0, "gsm_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isSidsAllZeros()Z
    .locals 3

    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    if-eqz v0, :cond_1

    .line 1777
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1778
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 1779
    return v0

    .line 1777
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1783
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2878
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2879
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2880
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2881
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2884
    :cond_1
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :goto_0
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2892
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2893
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2896
    :cond_1
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    :goto_0
    return-void
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 870
    .local v0, "rat":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 871
    .local v1, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 873
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v3, "gsm.network.type"

    .line 874
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    .line 873
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 876
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 4

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "notified":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V

    .line 853
    const/4 v0, 0x1

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    goto :goto_0

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 860
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return v0
.end method

.method protected notifySmoothLevel(I)V
    .locals 5
    .param p1, "msg_type"    # I

    .line 5198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySmoothLevel, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5199
    add-int/lit8 v0, p1, -0x65

    .line 5200
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5201
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v3, v4, :cond_0

    .line 5203
    const-string v1, "mOEMLastLevel_voice <= mOEMCurLevel_voice"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5204
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 5205
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 5206
    return-void

    .line 5209
    :cond_0
    const-string v2, "mOEMLastLevel_voice > mOEMCurLevel_voice, do pending update."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5210
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    goto :goto_0

    .line 5212
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v3, v4, :cond_2

    .line 5214
    const-string v1, "mOEMLastLevel_data <= mOEMCurLevel_data"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5215
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 5216
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 5217
    return-void

    .line 5220
    :cond_2
    const-string v2, "mOEMLastLevel_data > mOEMCurLevel_data, do pending update."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5221
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 5223
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5224
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 5225
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySmoothLevel (last:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") current:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5230
    return-void
.end method

.method protected oemCheckNoService()Z
    .locals 12

    .line 587
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isRemoveCard:Z

    const/16 v1, 0x29a

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_5

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 590
    .local v6, "currentTime":J
    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOnTime:J

    const-wide/16 v10, 0x2710

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    .line 592
    return v4

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOemRegState(Landroid/telephony/ServiceState;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOemRegState(Landroid/telephony/ServiceState;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    .line 599
    .local v0, "chgNoService":Z
    :goto_0
    if-eqz v0, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->bCheckNoServiceAgain:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 601
    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    const-wide/16 v10, 0x3a98

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    :goto_2
    move v2, v4

    .line 603
    .local v2, "isDelayOk":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oemCheckNoService currentTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  lastTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  isDelayOk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 605
    if-nez v2, :cond_4

    .line 607
    const-string v1, " oemCheckNoService isDelayOk--not-ok"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 609
    return v5

    .line 611
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    .line 612
    const-string v3, "oemCheckNoService : send EVENT_OEM_CHECK_NO_SERVICE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0, v1, v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 614
    return v5

    .line 617
    .end local v0    # "chgNoService":Z
    .end local v2    # "isDelayOk":Z
    .end local v6    # "currentTime":J
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->bCheckNoServiceAgain:Z

    .line 618
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 619
    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->lastTime:J

    .line 620
    return v4
.end method

.method protected oemCheckSignal()V
    .locals 1

    .line 5253
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5254
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 5255
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5256
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_2

    .line 5257
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;)Z

    .line 5259
    :cond_2
    return-void
.end method

.method public oem_get_new_SS()Landroid/telephony/ServiceState;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    .line 2948
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2949
    return-void
.end method

.method public onImsServiceStateChanged()V
    .locals 1

    .line 2925
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2926
    return-void
.end method

.method public onOemSignalStrengthResult(Landroid/os/AsyncResult;ZZ)Z
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z
    .param p3, "x_oemsmooth"    # Z

    .line 4719
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4724
    .local v0, "oldSignalStrength":Landroid/telephony/SignalStrength;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4725
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4726
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 4727
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    goto :goto_0

    .line 4729
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4730
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4733
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;Z)Z

    move-result v1

    return v1
.end method

.method public onOtherPhoneCallStateUpdated(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 5692
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5694
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5696
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isFakeUIPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5697
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 5698
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5701
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 5702
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4619
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isFakeUIPeriod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4620
    return v1

    .line 4623
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    .line 4624
    .local v0, "isGsm":Z
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 4625
    .local v2, "dataRat":I
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .line 4635
    .local v3, "voiceRat":I
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4636
    const/4 v0, 0x1

    .line 4644
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 4645
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/SignalStrength;

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignalStrengthResult() before validateInput mSignalStrength :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4651
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 4652
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 4654
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->fixType()V

    goto :goto_0

    .line 4656
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v0}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 4658
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getLteEarfcnRsrpBoost()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/SignalStrength;->setLteRsrpBoost(I)V

    .line 4660
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 4662
    .local v4, "config":Landroid/os/PersistableBundle;
    const/4 v5, 0x1

    new-array v6, v5, [I

    const/16 v7, 0x54

    aput v7, v6, v1

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4663
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6, v5}, Landroid/telephony/SignalStrength;->setUseOnlyRsrpForLteLevel(Z)V

    goto :goto_1

    .line 4665
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v8, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/SignalStrength;->setUseOnlyRsrpForLteLevel(Z)V

    .line 4669
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v8, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 4672
    new-array v5, v5, [I

    aput v7, v5, v1

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4673
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "rscp"

    invoke-virtual {v1, v5}, Landroid/telephony/SignalStrength;->setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V

    goto :goto_2

    .line 4675
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "wcdma_default_signal_strength_measurement_string"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/telephony/SignalStrength;->setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V

    .line 4679
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 4683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignalStrengthResult() mSignalStrength :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4686
    .end local v4    # "config":Landroid/os/PersistableBundle;
    goto :goto_3

    .line 4687
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4688
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4691
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 4699
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-nez v1, :cond_6

    .line 4700
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4702
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;)Z

    move-result v1

    .line 4705
    .local v1, "ssChanged":Z
    return v1
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .line 2825
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 2826
    return-void

    .line 2829
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2831
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_4

    .line 2832
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2833
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2834
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2835
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    .line 2836
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2838
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2839
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2841
    :cond_2
    if-eqz v0, :cond_4

    .line 2842
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2843
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2844
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2845
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2846
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x11

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2847
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_4

    .line 2848
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2850
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_4

    .line 2851
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x1a

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2852
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_4

    .line 2853
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x1b

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2858
    :cond_4
    :goto_0
    return-void
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    .line 1874
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1875
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1876
    .local v1, "sid":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    .line 1877
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1879
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    goto :goto_1

    .line 1880
    :catch_0
    move-exception v3

    .line 1881
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1877
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1885
    .end local v1    # "sid":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1887
    if-eqz p2, :cond_1

    .line 1888
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1889
    .local v1, "nid":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 1890
    nop

    .local v0, "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1892
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1895
    goto :goto_3

    .line 1893
    :catch_1
    move-exception v2

    .line 1894
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1890
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1898
    .end local v0    # "i":I
    .end local v1    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1899
    return-void
.end method

.method public pollState()V
    .locals 1

    .line 3032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    .line 3033
    return-void
.end method

.method public pollState(Z)V
    .locals 6
    .param p1, "modemTriggered"    # Z

    .line 3044
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3045
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 3047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollState: modemTriggered="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3049
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$2;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3059
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 3060
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v1}, Landroid/telephony/CellLocation;->setStateInvalid()V

    .line 3061
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 3062
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3065
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3067
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 3068
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    .line 3069
    goto :goto_1

    .line 3051
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3052
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v0}, Landroid/telephony/CellLocation;->setStateInvalid()V

    .line 3053
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 3054
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3055
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    .line 3056
    goto :goto_1

    .line 3076
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 3077
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 3079
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 3080
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v3, 0x2

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3082
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3081
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getNetworkRegistrationState(ILandroid/os/Message;)V

    .line 3084
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 3085
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3087
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3086
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getNetworkRegistrationState(ILandroid/os/Message;)V

    .line 3089
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3090
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 3091
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 3096
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 4437
    monitor-enter p0

    .line 4438
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v0, :cond_5

    .line 4439
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 4442
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4443
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4444
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4445
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4447
    :cond_0
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 4448
    const-string v1, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4449
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    goto/16 :goto_0

    .line 4452
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4453
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4454
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4455
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4457
    :cond_2
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 4458
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    .line 4459
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4460
    const-string v1, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4463
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-virtual {v1, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 4465
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4467
    :cond_3
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4468
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x26

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4469
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 4470
    const-wide/16 v3, 0x7530

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4471
    const-string v3, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4472
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 4474
    :cond_4
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4475
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 4476
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4480
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    :goto_0
    monitor-exit p0

    .line 4481
    return-void

    .line 4480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 3

    .line 4489
    monitor-enter p0

    .line 4490
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4491
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4492
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 4493
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 4494
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4495
    monitor-exit p0

    return v2

    .line 4497
    :cond_0
    monitor-exit p0

    return v1

    .line 4498
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1003
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1002
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1004
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4308
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4309
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4311
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 4312
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4314
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4326
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4327
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4329
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4330
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4332
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4347
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4348
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4349
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 4350
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "notifyNow"    # Z

    .line 980
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 983
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 986
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 958
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 959
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 961
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 964
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4362
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4364
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4365
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 4366
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4368
    :cond_0
    return-void
.end method

.method public registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4381
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4383
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4384
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4385
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4387
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4419
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4420
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4422
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4423
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4425
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4400
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4401
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4403
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4404
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4406
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4854
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4855
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4857
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4858
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4860
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 937
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 938
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 940
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 943
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 916
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 917
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 919
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 922
    :cond_0
    return-void
.end method

.method protected removeSmoothMessage()V
    .locals 1

    .line 5078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 5079
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 5080
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 5081
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 5082
    return-void
.end method

.method public requestShutdown()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 806
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 807
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 809
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 810
    return-void
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 5

    .line 5503
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_1

    .line 5504
    const/4 v0, 0x0

    .line 5505
    .local v0, "resetIwlanRatVal":Z
    const-string v1, "set service state as POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5506
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5507
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v2, v1, :cond_0

    .line 5508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5509
    const-string v1, "pollStateDone: reset iwlan RAT value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5510
    const/4 v0, 0x1

    .line 5513
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 5515
    .local v1, "operator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 5517
    .local v3, "operatorShort":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 5518
    if-eqz v0, :cond_1

    .line 5519
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 5520
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 5521
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 5523
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollStateDone: mNewSS = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5528
    .end local v0    # "resetIwlanRatVal":Z
    .end local v1    # "operator":Ljava/lang/String;
    .end local v3    # "operatorShort":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected setFakeUIPeriod(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 5709
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFakeUIPeriod:Z

    .line 5710
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .line 2929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegistrationState - registered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2931
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2932
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    .line 2933
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2935
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2936
    .local v0, "context":Landroid/content/Context;
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2937
    .local v1, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2938
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2940
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2941
    return-void

    .line 2944
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "am":Landroid/app/AlarmManager;
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2945
    return-void
.end method

.method public setNotification(I)V
    .locals 18
    .param p1, "notifyType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 4083
    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNotification: create notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4085
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot setNotification on invalid subid mSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4088
    return-void

    .line 4092
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 4094
    .local v2, "isSetNotification":Z
    if-nez v2, :cond_1

    .line 4095
    const-string v3, "Ignore all the notifications"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4096
    return-void

    .line 4099
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4101
    .local v3, "context":Landroid/content/Context;
    const-string v4, "carrier_config"

    .line 4102
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 4103
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    const/16 v5, 0x3ee

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 4104
    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 4105
    .local v7, "bundle":Landroid/os/PersistableBundle;
    if-eqz v7, :cond_3

    .line 4106
    const-string v8, "disable_voice_barring_notification_bool"

    invoke-virtual {v7, v8, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4108
    .local v8, "disableVoiceBarringNotification":Z
    if-eqz v8, :cond_3

    const/16 v9, 0x3eb

    if-eq v1, v9, :cond_2

    const/16 v9, 0x3ed

    if-eq v1, v9, :cond_2

    if-ne v1, v5, :cond_3

    .line 4111
    :cond_2
    const-string v5, "Voice/emergency call barred notification disabled"

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4112
    return-void

    .line 4117
    .end local v7    # "bundle":Landroid/os/PersistableBundle;
    .end local v8    # "disableVoiceBarringNotification":Z
    :cond_3
    const-string v7, ""

    .line 4118
    .local v7, "details":Ljava/lang/CharSequence;
    const-string v8, ""

    .line 4119
    .local v8, "title":Ljava/lang/CharSequence;
    const/16 v9, 0x3e7

    .line 4120
    .local v9, "notificationId":I
    const v10, 0x108008a

    .line 4122
    .local v10, "icon":I
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "phone"

    .line 4123
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    move v11, v12

    goto :goto_0

    :cond_4
    move v11, v6

    .line 4124
    .local v11, "multipleSubscriptions":Z
    :goto_0
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v13

    add-int/2addr v13, v12

    .line 4126
    .local v13, "simNumber":I
    const/16 v14, 0x7d1

    if-eq v1, v14, :cond_a

    const v15, 0x1040038

    const v14, 0x1040039

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 4160
    :pswitch_0
    const v5, 0x1040036

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4161
    if-eqz v11, :cond_5

    .line 4162
    new-array v5, v12, [Ljava/lang/Object;

    .line 4164
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    .line 4162
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4165
    :cond_5
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    move-object v7, v5

    .line 4166
    goto/16 :goto_5

    .line 4152
    :pswitch_1
    const v5, 0x1040037

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4153
    if-eqz v11, :cond_6

    .line 4154
    new-array v5, v12, [Ljava/lang/Object;

    .line 4156
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    .line 4154
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 4157
    :cond_6
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_2
    move-object v7, v5

    .line 4158
    goto/16 :goto_5

    .line 4169
    :pswitch_2
    goto/16 :goto_5

    .line 4144
    :pswitch_3
    const v5, 0x1040034

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4145
    if-eqz v11, :cond_7

    .line 4146
    new-array v5, v12, [Ljava/lang/Object;

    .line 4148
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    .line 4146
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 4149
    :cond_7
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_3
    move-object v7, v5

    .line 4150
    goto/16 :goto_5

    .line 4141
    :pswitch_4
    const/16 v9, 0x378

    .line 4142
    goto :goto_5

    .line 4128
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    int-to-long v14, v5

    .line 4129
    .local v14, "dataSubId":J
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    move-object/from16 v16, v7

    int-to-long v6, v5

    .end local v7    # "details":Ljava/lang/CharSequence;
    .local v16, "details":Ljava/lang/CharSequence;
    cmp-long v5, v14, v6

    if-eqz v5, :cond_8

    .line 4130
    return-void

    .line 4132
    :cond_8
    const/16 v9, 0x378

    .line 4133
    const v5, 0x1040035

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4134
    if-eqz v11, :cond_9

    .line 4135
    new-array v5, v12, [Ljava/lang/Object;

    .line 4137
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 4135
    const v6, 0x1040039

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 4138
    :cond_9
    const v5, 0x1040038

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_4
    move-object v7, v5

    .line 4139
    .end local v16    # "details":Ljava/lang/CharSequence;
    .restart local v7    # "details":Ljava/lang/CharSequence;
    goto :goto_5

    .line 4171
    .end local v14    # "dataSubId":J
    :cond_a
    move-object/from16 v16, v7

    .end local v7    # "details":Ljava/lang/CharSequence;
    .restart local v16    # "details":Ljava/lang/CharSequence;
    const/16 v9, 0x6f

    .line 4172
    iget v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-direct {v0, v5, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->selectResourceForRejectCode(IZ)I

    move-result v5

    .line 4173
    .local v5, "resId":I
    if-nez v5, :cond_b

    .line 4174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: mRejectCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not handled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4175
    return-void

    .line 4177
    :cond_b
    const v10, 0x1080795

    .line 4179
    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v6, v14

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4180
    const/4 v7, 0x0

    .line 4186
    .end local v5    # "resId":I
    .end local v16    # "details":Ljava/lang/CharSequence;
    .restart local v7    # "details":Ljava/lang/CharSequence;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotification, create notification, notifyType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4190
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 4191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4192
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4193
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4194
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4195
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x1060157

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4197
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 4198
    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4199
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "alert"

    .line 4200
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4201
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4203
    const-string v5, "notification"

    .line 4204
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 4206
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq v1, v6, :cond_10

    const/16 v6, 0x3ec

    if-ne v1, v6, :cond_c

    goto :goto_7

    .line 4210
    :cond_c
    const/4 v6, 0x0

    .line 4211
    .local v6, "show":Z
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x3ee

    if-ne v1, v12, :cond_d

    .line 4213
    const/4 v6, 0x1

    goto :goto_6

    .line 4214
    :cond_d
    const/16 v12, 0x7d1

    if-ne v1, v12, :cond_e

    .line 4216
    const/4 v6, 0x1

    goto :goto_6

    .line 4217
    :cond_e
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-nez v12, :cond_f

    .line 4221
    const/4 v6, 0x1

    .line 4224
    :cond_f
    :goto_6
    if-eqz v6, :cond_11

    .line 4225
    iget v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v12, v9, v14}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .end local v6    # "show":Z
    goto :goto_8

    .line 4208
    :cond_10
    :goto_7
    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4228
    :cond_11
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 3660
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 3661
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3660
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 3662
    .local v0, "idd":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3663
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "gsm.operator.idpstring"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3667
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "gsm.operator.idpstring"

    const-string v3, "+"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    :goto_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 9

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2776
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerOffDelayNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioDisabledByCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2780
    .local v0, "tmpLog":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2781
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2784
    .end local v0    # "tmpLog":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    .line 2785
    const-string v0, "mAlarmSwitch == true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2786
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2787
    .local v0, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 2788
    .local v2, "am":Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2789
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2793
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2794
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v4, :cond_1

    .line 2795
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2796
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2798
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v0, :cond_4

    .line 2799
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-nez v0, :cond_3

    .line 2800
    const-string v0, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2802
    .restart local v0    # "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 2804
    .restart local v2    # "am":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2805
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v0, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 2807
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2808
    const-string v1, "Alarm setting"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2809
    const/4 v1, 0x2

    .line 2810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 2809
    invoke-virtual {v2, v1, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2811
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2812
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 2813
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 2814
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    goto :goto_0

    .line 2816
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 2817
    .restart local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 2818
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    goto :goto_0

    .line 2819
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    .line 2822
    :cond_6
    :goto_0
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 2
    .param p1, "power"    # Z

    .line 1008
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 1010
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOnTime:J

    .line 1014
    return-void
.end method

.method public setRadioPowerFromCarrier(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1022
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1024
    return-void
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .line 5392
    nop

    .line 5393
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5394
    .local v0, "isVoiceInService":Z
    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    .line 5395
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5396
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5398
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5399
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_4

    .line 5402
    :cond_1
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_4

    .line 5407
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 5409
    .local v5, "intRoamingIndicators":[I
    if-eqz v5, :cond_5

    array-length v6, v5

    if-lez v6, :cond_5

    .line 5411
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 5412
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    .line 5413
    .local v6, "curRoamingIndicator":I
    move v7, v1

    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_4

    .line 5414
    aget v8, v5, v7

    if-ne v6, v8, :cond_3

    .line 5415
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 5417
    goto :goto_2

    .line 5413
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5420
    .end local v6    # "curRoamingIndicator":I
    .end local v7    # "i":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 5422
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5423
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_3

    .line 5426
    :cond_6
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 5430
    .end local v5    # "intRoamingIndicators":[I
    :goto_3
    goto :goto_4

    .line 5432
    :cond_7
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 5435
    :cond_8
    :goto_4
    nop

    .line 5436
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    .line 5437
    .local v5, "isDataInService":Z
    :goto_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    .line 5438
    .local v6, "dataRegType":I
    if-eqz v5, :cond_11

    .line 5439
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    if-nez v7, :cond_a

    .line 5440
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5442
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5443
    invoke-static {v6}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5444
    if-eqz v0, :cond_b

    .line 5446
    nop

    .line 5447
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 5446
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5450
    :cond_b
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5454
    :cond_c
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5457
    :cond_d
    invoke-static {v6}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5458
    if-eqz v0, :cond_e

    .line 5460
    nop

    .line 5461
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 5460
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5465
    :cond_e
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5469
    :cond_f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5470
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 5472
    :cond_10
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 5479
    :cond_11
    :goto_6
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4316
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4317
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4334
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4335
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4352
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4353
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 990
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 968
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4371
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4372
    return-void
.end method

.method public unregisterForNetworkDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4390
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4391
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4428
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4429
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4409
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4410
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4863
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4864
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 947
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 926
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 5055
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 5056
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5057
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fromServiceState=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5058
    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5060
    :cond_2
    return-void
.end method

.method protected updateOEMSmooth(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "st"    # Landroid/telephony/ServiceState;

    .line 5086
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;Z)Z

    move-result v0

    return v0
.end method

.method protected updateOEMSmooth(Landroid/telephony/ServiceState;Z)Z
    .locals 5
    .param p1, "st"    # Landroid/telephony/ServiceState;
    .param p2, "x_oemsmooth"    # Z

    .line 5092
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOEMLevel(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)[I

    move-result-object v0

    .line 5093
    .local v0, "levels":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 5094
    const/4 v2, 0x1

    aget v3, v0, v2

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 5097
    if-eqz p2, :cond_0

    .line 5098
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeSmoothMessage()V

    .line 5099
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 5100
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 5101
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 5102
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 5103
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    move-result v1

    return v1

    .line 5107
    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOemRegState(Landroid/telephony/ServiceState;)I

    move-result v3

    if-nez v3, :cond_1

    .line 5108
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 5109
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 5113
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOEMSmooth (last:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") current:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ) IS_OEM_SMOOTH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5118
    sget-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v2, v3, :cond_2

    goto :goto_0

    .line 5134
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    const/16 v4, 0x65

    if-gt v2, v3, :cond_3

    .line 5135
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 5136
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 5137
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 5139
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    if-nez v2, :cond_4

    .line 5140
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySmoothLevel(I)V

    .line 5143
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    const/16 v4, 0x66

    if-gt v2, v3, :cond_5

    .line 5144
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 5145
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 5146
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 5148
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    if-nez v1, :cond_6

    .line 5149
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySmoothLevel(I)V

    .line 5153
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 5154
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 5156
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    move-result v1

    return v1

    .line 5120
    :cond_7
    :goto_0
    const-string v1, "updateOEMSmooth:all current levels => last levels, update directly..."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeSmoothMessage()V

    .line 5123
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 5124
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 5125
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 5126
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 5127
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    move-result v1

    return v1
.end method

.method protected updateOtaspState()V
    .locals 4

    .line 1902
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v0

    .line 1903
    .local v0, "otaspMode":I
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 1904
    .local v1, "oldOtaspMode":I
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 1906
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v1, v2, :cond_0

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOtaspState: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1911
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    .line 1913
    :cond_0
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 895
    const v1, 0x11200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 898
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 899
    .local v0, "isRegistered":Z
    :goto_1
    if-nez v0, :cond_2

    .line 900
    const-string v1, "updatePhoneObject: Ignore update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 901
    return-void

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updatePhoneObject(I)V

    .line 905
    .end local v0    # "isRegistered":Z
    :cond_3
    return-void
.end method

.method public updatePhoneType()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 737
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 739
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 740
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 742
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 743
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 744
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 745
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 746
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 747
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 748
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 749
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 752
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 754
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 760
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 765
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 766
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    goto :goto_1

    .line 768
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x10

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 770
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    .line 771
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x27

    invoke-static {v2, v3, p0, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 773
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 776
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x28

    invoke-interface {v2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 777
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x24

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 778
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x25

    invoke-interface {v2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 780
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 782
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 787
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "gsm.network.type"

    .line 790
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 796
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 798
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logPhoneTypeChange()V

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 802
    return-void
.end method

.method protected updateRoamingState()V
    .locals 7

    .line 2432
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 2446
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    move v0, v1

    .line 2448
    .local v0, "roaming":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2449
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2450
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingState: resource override set non roaming.isSameNamedOperators="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2451
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isOperatorConsideredNonRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2452
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2450
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2453
    const/4 v0, 0x0

    .line 2456
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2457
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 2459
    .local v1, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_7

    .line 2461
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2463
    .local v2, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2464
    const-string v3, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2465
    const/4 v0, 0x0

    goto :goto_2

    .line 2466
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2468
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2467
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2469
    const/4 v0, 0x0

    goto :goto_2

    .line 2470
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2472
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2471
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2473
    const/4 v0, 0x1

    .line 2477
    .end local v2    # "b":Landroid/os/PersistableBundle;
    :cond_6
    :goto_2
    goto :goto_3

    .line 2475
    :catch_0
    move-exception v2

    .line 2476
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2479
    :cond_7
    const-string v2, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2482
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2483
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2484
    .end local v0    # "roaming":Z
    .end local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    goto/16 :goto_7

    .line 2485
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2486
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "carrier_config"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2487
    .local v0, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_e

    .line 2489
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 2490
    .local v3, "b":Landroid/os/PersistableBundle;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2492
    .local v4, "systemId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2493
    const-string v5, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2494
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V

    goto/16 :goto_5

    .line 2495
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2496
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    .line 2500
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2501
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2502
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2503
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2502
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2504
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOn()V

    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    goto :goto_5

    .line 2497
    .restart local v3    # "b":Landroid/os/PersistableBundle;
    .restart local v4    # "systemId":Ljava/lang/String;
    :cond_c
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRoamingState: carrier config override set non-roaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2498
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2497
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2499
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 2506
    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2507
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2508
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_5
    goto :goto_6

    .line 2510
    :cond_e
    const-string v3, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2513
    :goto_6
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_f

    const-string v3, "telephony.test.forceRoaming"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2514
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2515
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2518
    .end local v0    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_f
    :goto_7
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 25

    .line 2534
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromEri()V

    .line 2536
    const/4 v2, 0x0

    .line 2537
    .local v2, "wfcVoiceSpnFormat":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2538
    .local v3, "wfcDataSpnFormat":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState()I

    move-result v4

    .line 2539
    .local v4, "combinedRegState":I
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 2548
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x107007a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2550
    .local v5, "wfcSpnFormats":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2551
    .local v6, "voiceIdx":I
    const/4 v7, 0x0

    .line 2552
    .local v7, "dataIdx":I
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2553
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "carrier_config"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/CarrierConfigManager;

    .line 2554
    .local v8, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v8, :cond_1

    .line 2556
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2557
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 2558
    const-string v9, "wfc_spn_format_idx_int"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move v6, v9

    .line 2559
    const-string v9, "wfc_data_spn_format_idx_int"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 2564
    .end local v7    # "dataIdx":I
    .local v0, "dataIdx":I
    move v7, v0

    .end local v0    # "dataIdx":I
    .restart local v7    # "dataIdx":I
    :cond_0
    goto :goto_0

    .line 2562
    :catch_0
    move-exception v0

    .line 2563
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: carrier config error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2567
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    aget-object v2, v5, v6

    .line 2568
    aget-object v3, v5, v7

    .line 2571
    .end local v5    # "wfcSpnFormats":[Ljava/lang/String;
    .end local v6    # "voiceIdx":I
    .end local v7    # "dataIdx":I
    .end local v8    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_2
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const v6, 0x104032c

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_14

    .line 2590
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2591
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v10, 0x0

    .line 2592
    .local v10, "plmn":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2593
    .local v11, "showPlmn":Z
    if-eqz v0, :cond_3

    iget-object v12, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Landroid/telephony/ServiceState;)I

    move-result v12

    goto :goto_1

    :cond_3
    move v12, v8

    .line 2594
    .local v12, "rule":I
    :goto_1
    const/4 v13, 0x0

    .line 2595
    .local v13, "noService":Z
    if-eq v4, v9, :cond_7

    if-ne v4, v7, :cond_4

    goto :goto_3

    .line 2616
    :cond_4
    if-nez v4, :cond_6

    .line 2621
    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    .line 2623
    .end local v10    # "plmn":Ljava/lang/String;
    .local v6, "plmn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    and-int/lit8 v10, v12, 0x2

    if-ne v10, v7, :cond_5

    move v10, v9

    goto :goto_2

    :cond_5
    move v10, v8

    .line 2639
    .end local v11    # "showPlmn":Z
    .local v10, "showPlmn":Z
    :goto_2
    move v11, v10

    goto/16 :goto_6

    .line 2628
    .end local v6    # "plmn":Ljava/lang/String;
    .local v10, "plmn":Ljava/lang/String;
    .restart local v11    # "showPlmn":Z
    :cond_6
    const/4 v11, 0x1

    .line 2629
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 2630
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2631
    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v6    # "plmn":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " plmn="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 2597
    .end local v6    # "plmn":Ljava/lang/String;
    .restart local v10    # "plmn":Ljava/lang/String;
    :cond_7
    :goto_3
    const/4 v11, 0x1

    .line 2600
    iget-object v14, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1120046

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-boolean v14, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    if-nez v14, :cond_8

    move v14, v9

    goto :goto_4

    :cond_8
    move v14, v8

    .line 2603
    .local v14, "forceDisplayNoService":Z
    :goto_4
    iget-boolean v15, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v15, :cond_9

    if-nez v14, :cond_9

    .line 2605
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x10401e9

    .line 2606
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v6    # "plmn":Ljava/lang/String;
    goto :goto_5

    .line 2609
    .end local v6    # "plmn":Ljava/lang/String;
    .restart local v10    # "plmn":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 2610
    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2611
    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v6    # "plmn":Ljava/lang/String;
    const/4 v10, 0x1

    .line 2613
    .end local v13    # "noService":Z
    .local v10, "noService":Z
    move v13, v10

    .end local v10    # "noService":Z
    .restart local v13    # "noService":Z
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2616
    .end local v14    # "forceDisplayNoService":Z
    nop

    .line 2639
    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_a
    const-string v10, ""

    .line 2640
    .local v10, "spn":Ljava/lang/String;
    :goto_7
    move-object v14, v10

    .line 2641
    .local v14, "dataSpn":Ljava/lang/String;
    if-nez v13, :cond_b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    and-int/lit8 v15, v12, 0x1

    if-ne v15, v9, :cond_b

    move v15, v9

    goto :goto_8

    :cond_b
    move v15, v8

    .line 2645
    .local v15, "showSpn":Z
    :goto_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 2646
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 2650
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 2651
    .local v16, "originalSpn":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v16, v7, v8

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2652
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v16, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2653
    const/4 v15, 0x1

    .line 2654
    const/4 v11, 0x0

    .line 2655
    .end local v16    # "originalSpn":Ljava/lang/String;
    goto :goto_9

    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2658
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2659
    .local v7, "originalPlmn":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v7, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2660
    .end local v7    # "originalPlmn":Ljava/lang/String;
    goto :goto_9

    :cond_d
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_e

    if-eqz v11, :cond_f

    .line 2661
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2663
    :cond_e
    const/4 v10, 0x0

    .line 2664
    const/4 v15, 0x0

    .line 2667
    :cond_f
    :goto_9
    const/4 v5, -0x1

    .line 2668
    .local v5, "subId":I
    iget-object v7, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 2669
    .local v7, "subIds":[I
    if-eqz v7, :cond_10

    array-length v9, v7

    if-lez v9, :cond_10

    .line 2670
    aget v5, v7, v8

    .line 2674
    :cond_10
    iget v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v9, v5, :cond_12

    iget-boolean v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    if-ne v11, v9, :cond_12

    iget-boolean v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    if-ne v15, v9, :cond_12

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2677
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2678
    invoke-static {v14, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2679
    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_a

    .line 2700
    :cond_11
    move-object/from16 v24, v0

    goto/16 :goto_b

    .line 2681
    :cond_12
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    .line 2683
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v9, v18

    const/16 v16, 0x1

    aput-object v6, v9, v16

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v9, v17

    const/16 v16, 0x3

    aput-object v10, v9, v16

    const/16 v16, 0x4

    aput-object v14, v9, v16

    const/16 v16, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v9, v16

    .line 2681
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2685
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2686
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "showSpn"

    invoke-virtual {v8, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2687
    const-string v9, "spn"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2688
    const-string v9, "spnData"

    invoke-virtual {v8, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2689
    const-string v9, "showPlmn"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2690
    const-string v9, "plmn"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2691
    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2692
    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v24, v0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v24, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v9, v8, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2694
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v19

    move-object/from16 v18, v0

    move/from16 v20, v11

    move-object/from16 v21, v6

    move/from16 v22, v15

    move-object/from16 v23, v10

    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2696
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 2700
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_13
    :goto_b
    iput v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 2701
    iput-boolean v15, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 2702
    iput-boolean v11, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 2703
    iput-object v10, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2704
    iput-object v14, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2705
    iput-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2706
    .end local v5    # "subId":I
    .end local v6    # "plmn":Ljava/lang/String;
    .end local v7    # "subIds":[I
    .end local v10    # "spn":Ljava/lang/String;
    .end local v11    # "showPlmn":Z
    .end local v12    # "rule":I
    .end local v13    # "noService":Z
    .end local v14    # "dataSpn":Ljava/lang/String;
    .end local v15    # "showSpn":Z
    .end local v24    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    goto/16 :goto_e

    .line 2708
    :cond_14
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, "plmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2711
    .local v5, "showPlmn":Z
    if-eqz v0, :cond_15

    const/4 v7, 0x1

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    :goto_c
    move v5, v7

    .line 2713
    const/4 v7, -0x1

    .line 2714
    .local v7, "subId":I
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    .line 2715
    .local v14, "subIds":[I
    if-eqz v14, :cond_16

    array-length v8, v14

    if-lez v8, :cond_16

    .line 2716
    const/4 v8, 0x0

    aget v7, v14, v8

    .line 2719
    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 2722
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2723
    .local v8, "originalPlmn":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v10, v9

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2724
    .end local v8    # "originalPlmn":Ljava/lang/String;
    goto :goto_d

    :cond_17
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v8, v9, :cond_18

    .line 2728
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: overwriting plmn from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to null as radio state is off"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2730
    const/4 v0, 0x0

    .line 2733
    :cond_18
    :goto_d
    const/4 v8, 0x1

    if-ne v4, v8, :cond_19

    .line 2734
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2735
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSpnDisplay: radio is on but out of svc, set plmn=\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2741
    :cond_19
    iget v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v6, v7, :cond_1a

    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 2747
    :cond_1a
    const-string v6, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\' subId=\'%d\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 2748
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 2747
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2750
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2751
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "showSpn"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2752
    const-string v8, "spn"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2753
    const-string v8, "showPlmn"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2754
    const-string v8, "plmn"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2755
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-static {v6, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2756
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2758
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    const/4 v12, 0x0

    const-string v13, ""

    move v10, v5

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2760
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 2764
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1b
    iput v7, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 2765
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 2766
    iput-boolean v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 2767
    const-string v6, ""

    iput-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2768
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2770
    .end local v0    # "plmn":Ljava/lang/String;
    .end local v5    # "showPlmn":Z
    .end local v7    # "subId":I
    .end local v14    # "subIds":[I
    :goto_e
    return-void
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    .line 883
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 886
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 891
    :cond_0
    return-void
.end method
