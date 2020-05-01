.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;,
        Lcom/android/server/am/OnePlusProcessManager$Traffic;,
        Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;,
        Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;,
        Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;,
        Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final APP_CFG_FILE:Ljava/lang/String; = "cfg.xml"

.field private static final APP_CFG_PATH:Ljava/lang/String; = "/data/data_bpm/cfg.xml"

.field public static final BIND_SERVICE_LOCKED_TIMEOUT:I = 0x251c

.field private static final BLACK_ALARM_FILE:Ljava/lang/String; = "black_alarm.xml"

.field private static final BLACK_ALARM_PATH:Ljava/lang/String; = "/data/data_bpm/black_alarm.xml"

.field private static final BLACK_BRD_APP_FILE:Ljava/lang/String; = "black_brd.xml"

.field private static final BLACK_BRD_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_brd.xml"

.field private static final BLACK_GPS_APP_FILE:Ljava/lang/String; = "black_gps.xml"

.field private static final BLACK_GPS_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_gps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm/"

.field private static final BPM_FILE:Ljava/lang/String; = "bpm.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_FILE:Ljava/lang/String; = "bpm_sts.xml"

.field public static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_FILE:Ljava/lang/String; = "brd.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field private static CFG_VERSOON:I = 0x0

.field private static CONFIG_NAME:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEVICE_IDLE_SERVICE:Ljava/lang/String; = "deviceidle"

.field public static final DISPATCH_APP_VISIBILITY_TIMEOUT:I = 0x2454

.field public static final DISPATCH_RESIZED_TIMEOUT:I = 0x24b8

.field public static final DISPLAY_EVENT_TIMEOUT:I = 0x23f0

.field private static final FORCE_STOP_SENSOR_FILE:Ljava/lang/String; = "force_stop_sensor.xml"

.field private static final FORCE_STOP_SENSOR_PATH:Ljava/lang/String; = "/data/data_bpm/force_stop_sensor.xml"

.field private static final FORCE_SWITCH_IGNORE:I = 0x0

.field private static final FORCE_SWITCH_OFF:I = 0x2

.field private static final FORCE_SWITCH_ON:I = 0x1

.field private static final GET_CONFIG:I = 0x1

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static final GPS_BLOCK:I = 0x1

.field private static final GPS_UNBLOCK:I = 0x2

.field private static final INIT_CONFIG_DATA:I = 0x70

.field public static final INPUT_DEVICES_CHANGE_TIMEOUT:I = 0x238c

.field private static final MESSAGE_COMPLUTE_TRAFFIC:I = 0x74

.field private static final MESSAGE_SUSPEND_DELAY:I = 0x71

.field private static final MESSAGE_SUSPEND_UID_ADDPID:I = 0x73

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x77

.field private static final MESSAGE_UPDATE_STATE:I = 0x76

.field private static final MESSAGE_WRITE_PID_DELAY:I = 0x72

.field private static final PHONE_PKG_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PKG_FILE:Ljava/lang/String; = "pkg.xml"

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field public static final POLICY_USE_CGROUP:Z = true

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.cgroup.flags"

.field private static final PROP_REGION:Ljava/lang/String; = "persist.sys.oem.region"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.cgroup.using"

.field public static final PUBLISH_SERVICE_TIMEOUT:I = 0x2328

.field static final ReceiverFailMax:I = 0x4

.field private static SCREEN_OFF_INTENT:Ljava/lang/String; = null

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final START_WATCHING:I = 0x6f

.field private static final SUSPEND_DELAY:J = 0xfde8L

.field static final SUSPEND_DELAY_DEFAULT:I = 0x1

.field static final SUSPEND_DELAY_LONG:I = 0x3

.field static final SUSPEND_DELAY_SHORT:I = 0x2

.field private static final SUSPEND_PRE_APP_DELAY:J = 0x30d40L

.field private static final SYS_BLACK_ALARM_FILE:Ljava/lang/String; = "/system/bpm/black_alarm.xml"

.field private static final SYS_BLACK_BRD_FILE:Ljava/lang/String; = "/system/bpm/black_brd.xml"

.field private static final SYS_BLACK_GPS_FILE:Ljava/lang/String; = "/system/bpm/black_gps.xml"

.field private static final SYS_BRD_FILE:Ljava/lang/String; = "/system/bpm/brd.xml"

.field private static final SYS_CFG_FILE:Ljava/lang/String; = "/system/bpm/cfg.xml"

.field private static final SYS_FORCE_STOP_SENSOR_FILE:Ljava/lang/String; = "/system/bpm/force_stop_sensor.xml"

.field private static final SYS_PKG_FILE:Ljava/lang/String; = "/system/bpm/pkg.xml"

.field public static final SYS_STATUS_FILE:Ljava/lang/String; = "/system/bpm/bpm_sts.xml"

.field private static final SYS_VERSION_FILE:Ljava/lang/String; = "/system/bpm/version.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusProcessManager"

.field private static final TRAFFIC_THRESHOLD:J = 0x32000L

.field public static final TRANSACT_2APP_TIMEOUT:I = 0x3a98

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field public static final VERSION:I = 0xe69999

.field private static final VERSION_FILE:Ljava/lang/String; = "version.xml"

.field private static final VERSION_PATH:Ljava/lang/String; = "/data/data_bpm/version.xml"

.field static computeTrafficTime:J = 0x0L

.field private static isAlarmAdjust:Z = false

.field private static isChargeringCloseForzen:Z = false

.field static isSuppoerted:Z = false

.field private static isUsing:Z = false

.field private static lm:Lcom/android/server/LocationManagerService; = null

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field static mAdjustUids:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlarmManager:Landroid/app/AlarmManager; = null

.field static mAudioUids:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBPMStatus:Z = false

.field private static mBPMStatusing:Z = false

.field static mCanFrozenUids:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final mCgroupFreezerPath:Ljava/lang/String; = "/sys/fs/cgroup/freezer/"

.field private static mCharging:Z

.field private static mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field static mDoThawedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mGlobalFlags:I

.field static mLoactionFailUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mLock:Ljava/lang/Object;

.field public static mLockProcess:Ljava/lang/Object;

.field public static mMessageLock:Ljava/lang/Object;

.field private static mNotification:Landroid/app/INotificationManager;

.field private static mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

.field private static mOneplusProcessHandler:Landroid/os/Handler;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field static mPendingUid:I

.field static mPhoneAppReady:Z

.field public static mProcess:Ljava/lang/Object;

.field private static mRegion:Ljava/lang/String;

.field private static mResumeFirst:Z

.field public static mScreenLock:Ljava/lang/Object;

.field private static mScreenOffCheckIntent:Landroid/app/PendingIntent;

.field static mScreenOffCount:I

.field private static mScreenOffIntent:Landroid/content/Intent;

.field static mScreen_ON:Z

.field static mScreen_ON_ING:Z

.field static mSuspendFailUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mSuspendUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficeWhiteUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUidPackageNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUidTraffic:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusProcessManager$Traffic;",
            ">;"
        }
    .end annotation
.end field

.field static mUnFrozenReasonUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWakeLock:Ljava/lang/Object;

.field public static mWhiteLock:Ljava/lang/Object;

.field static mWhiteUids:[I

.field public static sInputMethodUid:I

.field static screenOffCheckDelayTime:J

.field static suspendUidDelayTime:J


# instance fields
.field private SUSPEND_FAIL_DEFAULT:D

.field private SUSPEND_FAIL_LONG:D

.field private SUSPEND_FAIL_NOTRY:D

.field private SUSPEND_FAIL_SLEEP:D

.field private SUSPEND_OK:D

.field appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field mAlarm:Landroid/app/IAlarmManager;

.field mAlarmAdjust:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackGpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFrontUid:I

.field private mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

.field mForceStopSensorPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mForceSwitch:I

.field mFrontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsFreezeHandler:Landroid/os/Handler;

.field mGpsReceiverLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mImportantUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOtherReceiverLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPowerAdjust:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mResumeProcessHandler:Landroid/os/Handler;

.field final mResumeUidBroadcasts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mRulesLock:Ljava/lang/Object;

.field mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mStatusLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendProcessHandler:Landroid/os/Handler;

.field private mSysCfgMapOnlineConifg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUidState:Landroid/util/SparseIntArray;

.field private mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field pm:Landroid/os/PowerManager;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 130
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 131
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    .line 139
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 141
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 144
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 149
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 150
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    .line 151
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    .line 152
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 234
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    .line 241
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    .line 242
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    .line 245
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 248
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    .line 253
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    .line 254
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    .line 255
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    .line 256
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    .line 257
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    .line 261
    const-string v2, "com.oneplus.android.screenOffCheckProcessState"

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    .line 264
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    .line 270
    new-array v2, v0, [I

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 272
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 273
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 274
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    .line 280
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 282
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 283
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 284
    const-wide/32 v2, 0x493e0

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    .line 285
    const-wide/32 v2, 0xea60

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    .line 286
    const-wide/16 v2, 0x7530

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    .line 287
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    .line 288
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    .line 289
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    .line 299
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    .line 308
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    .line 312
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    .line 314
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    .line 316
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 318
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 320
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 321
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 325
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 329
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    .line 337
    const-string v2, "ProcessFreezer"

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    .line 344
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 345
    sput v1, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 4378
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4379
    const-string v0, ""

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 12
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 146
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 147
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 246
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    .line 247
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    .line 249
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    .line 250
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    .line 268
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    .line 275
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 276
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 277
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 291
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    .line 293
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    .line 295
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    .line 302
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    .line 307
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 317
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    .line 322
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 323
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 330
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    .line 332
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    .line 343
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    .line 465
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    .line 866
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    .line 867
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    .line 868
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    .line 869
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    .line 870
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    .line 1388
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1630
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$3;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1801
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$4;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$4;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 4384
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$6;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$6;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oem.background.control"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 350
    const-string/jumbo v3, "persist.sys.cgroup.using"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 351
    const-string/jumbo v3, "persist.sys.alarmAdjust.using"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 352
    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "fajitat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 355
    :cond_0
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    if-nez v3, :cond_1

    .line 356
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 358
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v3, :cond_2

    .line 359
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnePlusProcessManager isSuppoerted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 363
    :cond_2
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 364
    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    .line 366
    const-string v3, "OnePlusProcessManager"

    const-string v5, "OnePlusProcessManager VERSION = v15112601"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string/jumbo v3, "sys.cgroup.version"

    const-string/jumbo v5, "v15112601"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v3, "persist.sys.cgroup.debug"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 369
    const-string/jumbo v3, "persist.sys.cgroup.debugdetail"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 370
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 371
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->registerSimReceiver()V

    .line 372
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "OneplusProcessThread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "mOneplusThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 374
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    .line 376
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const/16 v6, 0x6f

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const/16 v6, 0x70

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "SuspenPorcessThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 381
    .local v5, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 383
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "ResumeProcessThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 384
    .local v6, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 386
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "GpsFreezeThread"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 387
    .local v7, "mGpsFreezeThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 389
    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    .line 390
    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    .line 391
    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    .line 393
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 394
    const-string/jumbo v8, "notification"

    .line 395
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 394
    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    sput-object v8, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 396
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    .line 397
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    sput-object v8, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 398
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v8, "filter":Landroid/content/IntentFilter;
    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    .line 400
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v9, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    invoke-static {v9, v2, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    .line 407
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 409
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    const-string v10, "frozenApp"

    invoke-virtual {v9, v4, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 412
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11, v1, v0}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 414
    const-string v0, "deviceidle"

    .line 415
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 417
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "whitelistFilter":Landroid/content/IntentFilter;
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updatePowerSaveWhitelistLocked()V

    .line 422
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 423
    const-string/jumbo v9, "location"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService;

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 424
    const-string/jumbo v9, "power"

    .line 425
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 424
    invoke-static {v9}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 426
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "sensor"

    .line 427
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 428
    new-instance v9, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 429
    const-string v9, "alarm"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 430
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->initialOnlineConfig()V

    .line 431
    const-string/jumbo v9, "persist.sys.cgroup.charger"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 433
    new-instance v4, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    .line 434
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v9, "doze_mode_policy"

    .line 435
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    .line 434
    invoke-virtual {v4, v9, v2, v10, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusProcessManager;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    return-wide v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canFreezeGps(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Lcom/android/server/LocationManagerService;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .line 123
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2500(IIZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    return-void
.end method

.method static synthetic access$2600(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 123
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    return-void
.end method

.method static synthetic access$2700()Lcom/android/server/am/OnePlusProcessManager;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusProcessManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateForegroundActivityChange(I)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    return v0
.end method

.method static synthetic access$3000(IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V

    return-void
.end method

.method static synthetic access$3200()Landroid/app/PendingIntent;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/app/AlarmManager;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleAudioUid()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->hanleBlackSensor()V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    return v0
.end method

.method static synthetic access$3900()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return v0
.end method

.method static synthetic access$3902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 123
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/OnePlusProcessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/am/OnePlusProcessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    iput p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    return p1
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 123
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/android/server/am/OnePlusProcessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getCurrentFrontUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/am/OnePlusProcessManager;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleChangeForGpsProcess(ZI)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleForegroundChangeMessage(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/am/OnePlusProcessManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/am/OnePlusProcessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusProcessManager;I)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getRelatedUids(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startSuspendUid(I)Z

    move-result v0

    return v0
.end method

.method private add3rdAppProcessState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 2999
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3000
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3001
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3002
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 3003
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3004
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3006
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3007
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3008
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3010
    :cond_1
    :goto_0
    return-void
.end method

.method private static addDozeWhiteList(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 2048
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_1

    .line 2050
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 2051
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDozeWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2057
    :cond_1
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Cannot get DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :goto_1
    return-void
.end method

.method private addLocationFailCount(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 1009
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1010
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1011
    .local v1, "count":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1015
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    .line 1016
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 1019
    monitor-exit v0

    return v2

    .line 1021
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_1
    monitor-exit v0

    .line 1022
    const/4 v0, 0x0

    return v0

    .line 1021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .line 3553
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3554
    return-void

    .line 3556
    :cond_0
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3557
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_1

    .line 3560
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_1

    .line 3561
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3562
    if-lez p1, :cond_1

    .line 3563
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 3564
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3565
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v2, "addPidToCgroupTasksWithJudge"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3567
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3568
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3569
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3570
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3571
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3572
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3579
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private addSuspendDelayCount(I)J
    .locals 6
    .param p1, "uid"    # I

    .line 991
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 992
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 993
    .local v1, "count":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 997
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    .line 998
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 1001
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 1003
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    .line 1004
    .end local v1    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addTempWhiteList(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 1780
    invoke-interface {v1, v0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1781
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->addDozeWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    :cond_0
    goto :goto_0

    .line 1784
    :catch_0
    move-exception v1

    .line 1785
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OnePlusProcessManager"

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private adjustSuspendMessage(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "delayTime"    # J

    .line 3619
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    .line 3620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3621
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3622
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSuspendMessage message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 3624
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 3625
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3626
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3627
    monitor-exit v0

    .line 3629
    :cond_2
    return-void

    .line 3627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canFreezeGps(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1130
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] canFreezeGps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1132
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1134
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OnePlusProcessManager"

    const-string v2, "[GpsFreeze] canFreezeGps return true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1138
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OnePlusProcessManager"

    const-string v1, "[GpsFreeze] return false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private canSuspendUid(I)D
    .locals 4
    .param p1, "uid"    # I

    .line 2589
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2590
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2592
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2594
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_1

    .line 2597
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2598
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2599
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mFrontActivityUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2602
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2603
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWhiteUid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2606
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2607
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWhitePackageUid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2610
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    .line 2611
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWhiteUid import top "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2614
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2615
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mFrontWindowTouchUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2618
    :cond_6
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    if-ne v0, p1, :cond_7

    .line 2619
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2621
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2622
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspend hanlder already hasMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2625
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveAudioUids(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2626
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkActiveAudioUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2629
    :cond_9
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2630
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTrafficUid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2634
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveSensor(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2635
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkActiveSensor fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2637
    .local v0, "sensorPackage":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2638
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2639
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2640
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2642
    :cond_b
    :goto_0
    iget-wide v1, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v1

    .line 2645
    .end local v0    # "sensorPackage":Ljava/lang/String;
    :cond_c
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2646
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mAdjustUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2649
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2650
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mImportantUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2653
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2654
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2655
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2656
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip suspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to mGpsReceiverLocationUids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    iget-wide v1, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v1

    .line 2659
    :cond_f
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGpsReceiverUids plan to suspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2662
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addLocationFailCount(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2663
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2673
    :cond_11
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v0

    .line 2595
    .restart local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_12
    :goto_1
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    monitor-exit v0

    return-wide v2

    .line 2597
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private cancelNotificationsForUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2490
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$5;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2497
    return-void
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2500
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2501
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotificationsWithPkg():pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v0, :cond_1

    .line 2504
    return-void

    .line 2506
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    goto :goto_0

    .line 2508
    :catch_0
    move-exception v0

    .line 2509
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception---->cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private changeIntToList([I)Ljava/util/List;
    .locals 3
    .param p1, "elem"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1416
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1418
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private checkActiveAudioUids(I)Z
    .locals 7
    .param p1, "mUid"    # I

    .line 2322
    const/4 v0, 0x0

    .line 2323
    .local v0, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v0

    .line 2324
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2325
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveAudioUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2328
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 2329
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2330
    goto :goto_1

    .line 2332
    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2337
    .local v3, "uid":I
    if-nez v3, :cond_2

    .line 2338
    return v1

    .line 2340
    :cond_2
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 2341
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock owner uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_3
    if-ne v3, p1, :cond_4

    .line 2344
    const/4 v1, 0x1

    return v1

    .line 2328
    .end local v3    # "uid":I
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2348
    .end local v2    # "i":I
    :cond_5
    return v1
.end method

.method private checkActiveSensor(I)Z
    .locals 5
    .param p1, "mUid"    # I

    .line 2714
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 2715
    .local v0, "activeSensor":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2716
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkActiveSensor activeSensor= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2719
    .local v1, "mTrackUids":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2720
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 2721
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2722
    goto :goto_1

    .line 2724
    :cond_1
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2725
    .local v4, "uid":I
    if-nez v4, :cond_2

    .line 2726
    return v2

    .line 2728
    :cond_2
    if-ne v4, p1, :cond_3

    .line 2729
    const/4 v2, 0x1

    return v2

    .line 2720
    .end local v4    # "uid":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2733
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method static final checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3350
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3351
    return-void

    .line 3353
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3354
    return-void

    .line 3356
    :cond_1
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died but not restart......"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3359
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3360
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 3362
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 3363
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 3364
    iput-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 3365
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_0

    .line 3366
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 3369
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3370
    .local v0, "NL":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 3371
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 3372
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_4

    .line 3373
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 3374
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3370
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3377
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method static final checkBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3718
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3719
    return v1

    .line 3721
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3722
    return v1

    .line 3724
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3725
    return v1

    .line 3728
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v0, p1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3729
    return v1

    .line 3731
    :cond_3
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_4

    .line 3732
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM skip broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3736
    const/4 v0, 0x0

    return v0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 10
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 3773
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3774
    return v1

    .line 3776
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3777
    return v1

    .line 3779
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3780
    return v1

    .line 3782
    :cond_2
    if-eqz p1, :cond_9

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 3785
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3786
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    .line 3787
    return v1

    .line 3789
    :cond_4
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_5

    .line 3790
    return v1

    .line 3792
    :cond_5
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-nez v2, :cond_6

    .line 3793
    return v1

    .line 3795
    :cond_6
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v2, v0, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3796
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_7

    .line 3797
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not want to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " callUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    :cond_7
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 3803
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 3804
    const/4 v1, 0x1

    return v1

    .line 3806
    :cond_8
    return v1

    .line 3783
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_9
    :goto_0
    return v1
.end method

.method private checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 6
    .param p1, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 3811
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3812
    .local v0, "broadcastAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3813
    .local v1, "isCheckBroadcast":Z
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3814
    return v2

    .line 3816
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3817
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3818
    const/4 v1, 0x1

    .line 3819
    goto :goto_1

    .line 3821
    .end local v4    # "action":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3822
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 3823
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3824
    return v2

    .line 3826
    :cond_3
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3827
    return v2

    .line 3829
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3830
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3831
    const/4 v2, 0x1

    return v2

    .line 3834
    :cond_5
    return v2
.end method

.method static final checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3317
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3318
    return v1

    .line 3320
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v0, :cond_1

    .line 3321
    return v1

    .line 3323
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_2

    .line 3324
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 3326
    :cond_2
    return v1
.end method

.method private checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3330
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3331
    return v1

    .line 3333
    :cond_0
    if-nez p1, :cond_1

    .line 3334
    return v1

    .line 3336
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_2

    .line 3337
    return v1

    .line 3339
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_3

    .line 3340
    return v1

    .line 3343
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3383
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3384
    return v0

    .line 3386
    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 3387
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_1

    .line 3388
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " app.uid < Process.FIRST_APPLICATION_UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    :cond_1
    return v3

    .line 3392
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3393
    return v3

    .line 3395
    :cond_3
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3396
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_4

    .line 3397
    const-string v0, "OnePlusProcessManager"

    const-string v1, "checkProcessRecord ->#return true, it\'s white app "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_4
    return v3

    .line 3401
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v1

    .line 3402
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3403
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3404
    monitor-exit v1

    return v3

    .line 3406
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 3407
    :cond_7
    monitor-exit v1

    .line 3408
    return v0

    .line 3407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3687
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3688
    return v1

    .line 3690
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3691
    return v1

    .line 3693
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3694
    return v1

    .line 3696
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 3697
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "checkProcessWhileBroadcastTimeout "

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3700
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 3701
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileBroadcastTimeout(): and resumeUid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :cond_4
    return v1

    .line 3707
    :cond_5
    return v1
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3659
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3660
    return v1

    .line 3662
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3663
    return v1

    .line 3665
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3666
    return v1

    .line 3668
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 3669
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileTimeout(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "checkProcessWhileTimeout"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3672
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 3673
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileTimeout(): and resumeUid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    :cond_4
    return v1

    .line 3680
    :cond_5
    return v1
.end method

.method public static checkTimeoutBegin(III)V
    .locals 3
    .param p0, "key"    # I
    .param p1, "timeoutUid"    # I
    .param p2, "timeoutPid"    # I

    .line 4454
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 4455
    return-void

    .line 4457
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 4458
    return-void

    .line 4460
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_2

    .line 4461
    return-void

    .line 4464
    :cond_2
    const/16 v0, 0x2328

    if-eq p0, v0, :cond_8

    const/16 v0, 0x238c

    if-eq p0, v0, :cond_7

    const/16 v0, 0x23f0

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2454

    if-eq p0, v0, :cond_5

    const/16 v0, 0x251c

    const/16 v1, 0x24b8

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_4

    goto :goto_0

    .line 4482
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4483
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v1, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4485
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4486
    .local v0, "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 4478
    :cond_5
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4479
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4480
    goto :goto_0

    .line 4474
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4475
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4476
    goto :goto_0

    .line 4470
    .end local v0    # "msg":Landroid/os/Message;
    :cond_7
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4471
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4472
    goto :goto_0

    .line 4466
    .end local v0    # "msg":Landroid/os/Message;
    :cond_8
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4467
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4468
    nop

    .line 4491
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public static checkTimeoutEnd(I)V
    .locals 3
    .param p0, "key"    # I

    .line 4509
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 4510
    return-void

    .line 4512
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 4513
    return-void

    .line 4515
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_2

    .line 4516
    return-void

    .line 4518
    :cond_2
    const/16 v0, 0x2328

    if-eq p0, v0, :cond_8

    const/16 v0, 0x238c

    if-eq p0, v0, :cond_7

    const/16 v0, 0x23f0

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2454

    if-eq p0, v0, :cond_5

    const/16 v0, 0x251c

    const/16 v1, 0x24b8

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_4

    goto :goto_0

    .line 4532
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4534
    :cond_4
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 4529
    :cond_5
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4530
    goto :goto_0

    .line 4526
    :cond_6
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4527
    goto :goto_0

    .line 4523
    :cond_7
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4524
    goto :goto_0

    .line 4520
    :cond_8
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4521
    nop

    .line 4538
    :goto_0
    return-void
.end method

.method private checkVersion()Z
    .locals 9

    .line 2515
    const-string v0, "/data/data_bpm/version.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2516
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/system/bpm/version.xml"

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2521
    .local v1, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2522
    .local v2, "sv":I
    const/4 v3, 0x0

    .line 2523
    .local v3, "dv":I
    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 2524
    const/4 v2, 0x0

    .line 2525
    return v4

    .line 2527
    :cond_0
    const-string/jumbo v5, "version"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2528
    .local v5, "sysVersion":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2530
    if-nez v0, :cond_1

    .line 2531
    const/4 v3, 0x0

    goto :goto_0

    .line 2533
    :cond_1
    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2534
    .local v6, "dataVersion":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2536
    .end local v6    # "dataVersion":Ljava/lang/String;
    :goto_0
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkVersion  sv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dv ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    if-le v2, v3, :cond_2

    .line 2538
    const/4 v4, 0x1

    return v4

    .line 2540
    :cond_2
    return v4
.end method

.method private checkWhitePackageUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 2403
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2404
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v1

    .line 2405
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2406
    monitor-exit v1

    return v2

    .line 2408
    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2409
    if-eqz v0, :cond_1

    const-string v1, "com.cttl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2410
    return v2

    .line 2412
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 2408
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private checkWhiteUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 2384
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2385
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ""

    .line 2386
    .local v1, "whitePackage":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2387
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 2388
    move-object v3, v1

    move v1, v4

    .local v1, "i":I
    .local v3, "whitePackage":Ljava/lang/String;
    :goto_0
    :try_start_1
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 2389
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    aget v5, v5, v1

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 2390
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2391
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_0

    .line 2392
    const-string v4, "OnePlusProcessManager"

    const-string v5, "checkWhiteUid ->#return true, it\'s white app "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    return v2

    .line 2388
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2397
    .end local v1    # "i":I
    :cond_2
    move-object v1, v3

    .end local v3    # "whitePackage":Ljava/lang/String;
    .local v1, "whitePackage":Ljava/lang/String;
    :cond_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 2398
    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .end local v1    # "whitePackage":Ljava/lang/String;
    .restart local v3    # "whitePackage":Ljava/lang/String;
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private computeUidTraffic(I)I
    .locals 14
    .param p1, "uid"    # I

    .line 1943
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1944
    const/4 v1, 0x1

    .line 1945
    .local v1, "checkAgain":Z
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1946
    .local v2, "count":Ljava/lang/Integer;
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    .line 1947
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeUidTraffic begin uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTrafficUid(I)Z

    move-result v3

    move v1, v3

    .line 1950
    if-eqz v1, :cond_4

    .line 1951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1952
    .local v8, "now":J
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1953
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1954
    .local v3, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1957
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1958
    sget-boolean v6, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v6, :cond_1

    .line 1959
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1961
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1962
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    :cond_2
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_3

    .line 1966
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeUidTraffic uid ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    .end local v3    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v8    # "now":J
    :cond_3
    goto/16 :goto_0

    .line 1968
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5

    .line 1969
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeUidTraffic not check  uid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_5
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1972
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1974
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 1975
    .local v3, "packageName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1976
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1977
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1980
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v3, :cond_7

    .line 1981
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-direct {v3, p1, v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1983
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 1986
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1987
    .restart local v8    # "now":J
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1988
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1989
    .local v3, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, v6

    .line 1992
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    .end local v3    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v8    # "now":J
    :goto_0
    if-nez v2, :cond_9

    .line 1995
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 1997
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v0

    return v3

    .line 1998
    .end local v1    # "checkAgain":Z
    .end local v2    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static continueSuspendUid(I)V
    .locals 3
    .param p0, "uid"    # I

    .line 2181
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 2182
    return-void

    .line 2184
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 2185
    return-void

    .line 2187
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 2188
    return-void

    .line 2190
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2191
    return-void

    .line 2193
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2194
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2195
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueSuspendUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :cond_4
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p0, :cond_5

    .line 2197
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2199
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 2202
    :cond_5
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .param p3, "isForceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4078
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4079
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 4080
    return-void

    .line 4082
    :cond_0
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile():fromFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", toFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4084
    .local v1, "sourceFile":Ljava/io/File;
    invoke-static {v1, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 4085
    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 4

    .line 2432
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2433
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 2434
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2436
    :cond_0
    const-string v0, ""

    .line 2437
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 2439
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2441
    :cond_1
    const-string v0, ":0"

    .line 2443
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2444
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveAudioPids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBPMEnable_out()Z
    .locals 2

    .line 2964
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 2965
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const/4 v0, 0x0

    return v0

    .line 2968
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable()Z

    move-result v0

    return v0
.end method

.method private getCurrentFrontUid()I
    .locals 5

    .line 1068
    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1070
    .local v1, "a":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 1071
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GpsFreeze] pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1080
    .end local v1    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    nop

    .line 1081
    return v0

    .line 1076
    :catch_0
    move-exception v1

    .line 1078
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "OnePlusProcessManager"

    const-string v3, "getCurrentFrontUid error, return -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_2
    return v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusProcessManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 2173
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 2174
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 2176
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .line 2025
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2026
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2027
    return-object v0

    .line 2029
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_2

    .line 2030
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2032
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 2034
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2035
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 2036
    aget-object v2, v1, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2040
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    nop

    .line 2032
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2038
    :catch_0
    move-exception v2

    .line 2039
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, ""

    return-object v4

    .line 2044
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3522
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    monitor-enter v0

    .line 3523
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3526
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 3527
    .local v2, "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3528
    .local v3, "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_2

    .line 3531
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3532
    .local v4, "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 3533
    .local v5, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3534
    :try_start_1
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v7

    move-object v5, v7

    .line 3535
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3536
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v6, v7, :cond_2

    .line 3538
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3541
    .local v7, "pid":Ljava/lang/Integer;
    nop

    .line 3540
    nop

    .line 3542
    if-nez v7, :cond_1

    .line 3543
    goto :goto_1

    .line 3544
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3545
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3536
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3539
    .end local v7    # "pid":Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 3540
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 3547
    .end local v6    # "i":I
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    .line 3535
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7

    .line 3529
    .end local v4    # "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_3
    :goto_2
    monitor-exit v0

    return-object v1

    .line 3548
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v3    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private getRelatedUids(I)Ljava/util/ArrayList;
    .locals 19
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2794
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2795
    .local v2, "mSuspendProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 2797
    .local v3, "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2800
    :cond_0
    const/4 v0, 0x0

    .line 2800
    .local v0, "k":I
    :goto_0
    move v6, v0

    .line 2800
    .end local v0    # "k":I
    .local v6, "k":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_f

    .line 2801
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2802
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_1

    .line 2803
    nop

    .line 2800
    move/from16 v8, p1

    move/from16 v17, v6

    goto/16 :goto_9

    .line 2806
    :cond_1
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v0, :cond_3

    .line 2807
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 2808
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip suspend due to requesting perm uid ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2810
    :cond_2
    move/from16 v8, p1

    :goto_1
    return-object v4

    .line 2812
    :cond_3
    move/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2813
    const/4 v0, 0x0

    .line 2814
    .local v0, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2814
    .local v9, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2815
    const/4 v10, 0x0

    .line 2817
    .end local v0    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v10, "sr":Lcom/android/server/am/ServiceRecord;
    :try_start_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2820
    .end local v10    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v0    # "sr":Lcom/android/server/am/ServiceRecord;
    nop

    .line 2821
    if-eqz v0, :cond_8

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v10, :cond_8

    .line 2822
    const/4 v10, 0x0

    .line 2822
    .local v10, "conni":I
    :goto_3
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 2823
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2824
    .local v11, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v12, 0x0

    .line 2824
    .local v12, "i":I
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 2825
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ConnectionRecord;

    .line 2826
    .local v13, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v13, :cond_6

    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v14, :cond_6

    iget v14, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v15, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v15, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v14, v15, :cond_6

    .line 2828
    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2829
    .local v14, "mUid":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2830
    nop

    .line 2824
    move/from16 v17, v6

    goto :goto_5

    .line 2832
    :cond_4
    invoke-direct {v1, v14}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v15

    move/from16 v17, v6

    iget-wide v5, v1, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    .line 2832
    .end local v6    # "k":I
    .local v17, "k":I
    cmpl-double v5, v15, v5

    if-nez v5, :cond_5

    .line 2833
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2834
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2836
    :cond_5
    return-object v4

    .line 2824
    .end local v13    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "mUid":I
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_6
    move/from16 v17, v6

    .line 2824
    .end local v6    # "k":I
    .restart local v17    # "k":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v17

    goto :goto_4

    .line 2822
    .end local v11    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v12    # "i":I
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_7
    move/from16 v17, v6

    .line 2822
    .end local v6    # "k":I
    .restart local v17    # "k":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2814
    .end local v10    # "conni":I
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_8
    move/from16 v17, v6

    .line 2814
    .end local v6    # "k":I
    .restart local v17    # "k":I
    move/from16 v6, v17

    goto/16 :goto_2

    .line 2818
    .end local v0    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "k":I
    .restart local v6    # "k":I
    .local v10, "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v0

    move/from16 v17, v6

    .line 2819
    .end local v6    # "k":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "k":I
    goto :goto_6

    .line 2845
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_9
    move/from16 v17, v6

    .line 2845
    .end local v6    # "k":I
    .restart local v17    # "k":I
    :goto_6
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v0, :cond_e

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 2846
    const/4 v0, 0x0

    .line 2846
    .local v0, "conni":I
    :goto_7
    move v5, v0

    .line 2846
    .end local v0    # "conni":I
    .local v5, "conni":I
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v5, v0, :cond_e

    .line 2847
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    .line 2848
    .local v6, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v0, 0x0

    .line 2849
    .local v0, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget-object v9, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    .line 2849
    .end local v0    # "sr":Lcom/android/server/am/ContentProviderConnection;
    .restart local v9    # "it":Ljava/util/Iterator;
    .local v10, "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_a
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2851
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    .line 2854
    nop

    .line 2855
    if-eqz v10, :cond_a

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v11, v10, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v0, v11, :cond_a

    .line 2856
    iget-object v0, v10, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2857
    .local v0, "mUid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2858
    goto :goto_8

    .line 2860
    :cond_b
    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    cmpl-double v11, v11, v13

    if-nez v11, :cond_c

    .line 2861
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2862
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2864
    :cond_c
    return-object v4

    .line 2852
    .end local v0    # "mUid":I
    :catch_1
    move-exception v0

    .line 2853
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 2846
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "c":Lcom/android/server/am/ContentProviderRecord;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_d
    add-int/lit8 v0, v5, 0x1

    .line 2846
    .end local v5    # "conni":I
    .local v0, "conni":I
    goto :goto_7

    .line 2800
    .end local v0    # "conni":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e
    :goto_9
    add-int/lit8 v0, v17, 0x1

    .line 2800
    .end local v17    # "k":I
    .local v0, "k":I
    goto/16 :goto_0

    .line 2871
    .end local v0    # "k":I
    :cond_f
    move/from16 v8, p1

    return-object v3

    .line 2798
    :cond_10
    :goto_a
    move/from16 v8, p1

    return-object v4
.end method

.method public static getScreenState()Z
    .locals 2

    .line 3165
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3166
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    monitor-exit v0

    return v1

    .line 3167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSilent_AudioUids()[Ljava/lang/String;
    .locals 4

    .line 2449
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2450
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 2451
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2453
    :cond_0
    const-string v0, ""

    .line 2454
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 2456
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_silent_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2458
    :cond_1
    const-string v0, ":0"

    .line 2460
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2461
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSilent_AudioUids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleAudioUid()V
    .locals 10

    .line 1702
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getSilent_AudioUids()[Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "silentUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, "activeUids":[Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 1706
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1709
    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 1710
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 1711
    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1712
    goto :goto_1

    .line 1714
    :cond_1
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1715
    .local v4, "silentUid":I
    const/16 v5, 0x2710

    if-lt v4, v5, :cond_2

    .line 1716
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1717
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1718
    .local v5, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1719
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceStopPackage: silentPackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1721
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1710
    .end local v4    # "silentUid":I
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1725
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_9

    .line 1726
    move v3, v2

    .local v3, "j":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_9

    .line 1727
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1728
    goto :goto_6

    .line 1730
    :cond_4
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1731
    .local v4, "activeUid":I
    const/4 v5, 0x0

    .line 1732
    .local v5, "mFind":Z
    if-eqz v0, :cond_7

    .line 1733
    move v6, v2

    .local v6, "k":I
    :goto_3
    array-length v7, v0

    if-ge v6, v7, :cond_7

    .line 1734
    aget-object v7, v0, v6

    if-eqz v7, :cond_6

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1735
    goto :goto_4

    .line 1737
    :cond_5
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1738
    .local v7, "silentUid":I
    if-ne v7, v4, :cond_6

    .line 1739
    const/4 v5, 0x1

    .line 1740
    goto :goto_5

    .line 1733
    .end local v7    # "silentUid":I
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1744
    .end local v6    # "k":I
    :cond_7
    :goto_5
    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->isMusicPlaying()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1745
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1746
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1726
    .end local v4    # "activeUid":I
    .end local v5    # "mFind":Z
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1750
    .end local v3    # "j":I
    :cond_9
    return-void
.end method

.method private handlePackageChange(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1424
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v0, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v1, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move v3, v2

    .line 1427
    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1428
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1429
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1430
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1433
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_1
    move v3, v2

    .line 1433
    .restart local v3    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1434
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1435
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1436
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1439
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_3
    move v3, v2

    .line 1439
    .local v3, "j":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1440
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1441
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "handlePackageChange"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1439
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1443
    .end local v3    # "j":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_4
    nop

    .line 1443
    .local v2, "j":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1444
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1445
    .local v3, "pkg":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1443
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1447
    .end local v2    # "j":I
    .end local v3    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1452
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .local v0, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    .local v1, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move v3, v2

    .line 1455
    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1456
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1457
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1458
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1461
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    move v3, v2

    .line 1461
    .restart local v3    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1462
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1463
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1464
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1467
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    move v3, v2

    .line 1467
    .local v3, "j":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 1468
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1471
    .restart local v4    # "pkg":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1473
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "handlePackageChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_3

    .line 1474
    :catch_0
    move-exception v5

    .line 1467
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1477
    .end local v3    # "j":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_4
    nop

    .line 1477
    .local v2, "j":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1478
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1480
    .local v3, "pkg":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1482
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v7, 0x2

    sget-wide v9, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v7, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1484
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_5

    .line 1483
    :catch_1
    move-exception v4

    .line 1477
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1486
    .end local v2    # "j":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private declared-synchronized handleSettingsChangedLocked()V
    .locals 4

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    .line 453
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v3, -0x2

    .line 452
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 454
    .local v0, "policy":I
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 455
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSettingsChangedLocked # mBPMStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 459
    .local v1, "changedPolicy":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq v1, v2, :cond_2

    .line 460
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnableFromDB(Z)V

    .line 461
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_2
    monitor-exit p0

    return-void

    .line 451
    .end local v0    # "policy":I
    .end local v1    # "changedPolicy":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 451
    .end local p0    # "this":Lcom/android/server/am/OnePlusProcessManager;
    throw v0
.end method

.method private handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 8
    .param p1, "oldList"    # Ljava/util/HashSet;
    .param p2, "newList"    # Ljava/util/HashSet;

    .line 1490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v0, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    .local v1, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1495
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1497
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1498
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1501
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1502
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1504
    .restart local v3    # "mUid":Ljava/lang/Integer;
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1505
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1508
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_3
    const/4 v3, 0x0

    move v4, v3

    .line 1508
    .local v4, "j":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1509
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1510
    .local v5, "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "handleUidChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1508
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1512
    .end local v4    # "j":I
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_4
    nop

    .line 1512
    .local v3, "j":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1513
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1516
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1512
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1518
    .end local v3    # "j":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private hanleBlackSensor()V
    .locals 8

    .line 1679
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "activeSensor":Ljava/lang/String;
    const-string v1, ""

    .line 1681
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1682
    .local v2, "mTrackUids":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1683
    const/4 v3, 0x0

    .line 1683
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1684
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1685
    goto :goto_1

    .line 1687
    :cond_0
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1688
    .local v4, "uid":I
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1690
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hanleBlackSensor  uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " package ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1693
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1694
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1695
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 1683
    .end local v4    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1699
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private initialOnlineConfig()V
    .locals 5

    .line 4210
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 4212
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 4215
    return-void
.end method

.method private isBlockedGpsUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1085
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v0

    return v0
.end method

.method public static isDeliverDisplayChange(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 3028
    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 3029
    return v0

    .line 3031
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_1

    .line 3032
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->isDeliverDisplayChangeLock(I)Z

    move-result v0

    return v0

    .line 3034
    :cond_1
    return v0
.end method

.method private isDeliverDisplayChangeLock(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 3039
    const/4 v0, 0x0

    .line 3040
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3041
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    .line 3042
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3043
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_2

    .line 3044
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3045
    return v1

    .line 3048
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 3049
    return v1

    .line 3051
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 3055
    :cond_2
    return v1

    .line 3042
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3310
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .line 3838
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 3842
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 3843
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3844
    const/4 v0, 0x1

    return v0

    .line 3842
    .end local v3    # "v":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3847
    :cond_2
    return v0

    .line 3839
    :cond_3
    :goto_1
    return v0
.end method

.method private isMusicPlaying()Z
    .locals 5

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1754
    .local v0, "currentVolume":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1756
    .local v1, "isMusicActive":Z
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 1757
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMusicActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isSupportFrozenApp()Z
    .locals 1

    .line 543
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUidSuspended(I)Z
    .locals 6
    .param p0, "uid"    # I

    .line 3013
    const-string/jumbo v0, "isUidSuspended"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3014
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3015
    const/4 v3, 0x0

    .line 3016
    .local v3, "resturn":Z
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 3021
    :cond_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    .line 3022
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3023
    monitor-exit v0

    return v3

    .line 3017
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3018
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3024
    .end local v3    # "resturn":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static killBlockProcess(IILjava/lang/String;)V
    .locals 3
    .param p0, "timeoutUid"    # I
    .param p1, "timeoutPid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 4541
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", kill this process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->sendSignal(II)V

    .line 4543
    return-void
.end method

.method public static loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3953
    .local v0, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3954
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3955
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]loadStateLocked():path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " file don\'t exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    return-object v0

    .line 3958
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3959
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3960
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3962
    .local v4, "success":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 3963
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3964
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3967
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 3968
    .local v7, "type":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 3969
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3970
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v9, "p"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3971
    const-string v9, "att"

    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3972
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 3973
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3977
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 3978
    const/4 v4, 0x1

    .line 3983
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    nop

    .line 3984
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3985
    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 3987
    :catch_0
    move-exception v5

    .line 3988
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3990
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 3989
    :cond_3
    :goto_1
    goto :goto_2

    .line 3982
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 3979
    :catch_1
    move-exception v5

    .line 3980
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FO]loadStateLocked():path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  --> failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3983
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 3984
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3991
    :goto_2
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_4

    .line 3992
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FO]loadStateLocked():path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " date size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    :cond_4
    if-eqz v4, :cond_5

    .line 3994
    return-object v2

    .line 3996
    :cond_5
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_6

    .line 3997
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FO]loadStateLocked(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " file failed parsing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    :cond_6
    return-object v0

    .line 3982
    :goto_3
    nop

    .line 3983
    if-eqz v3, :cond_7

    .line 3984
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3985
    const/4 v3, 0x0

    goto :goto_4

    .line 3987
    :catch_2
    move-exception v6

    .line 3988
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 3988
    .end local v6    # "e":Ljava/io/IOException;
    nop

    .line 3989
    :cond_7
    :goto_4
    throw v5
.end method

.method public static loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadXmlLocked():path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3854
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3855
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]loadXmlLocked():path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file don\'t exist!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3857
    return-object v2

    .line 3859
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3860
    .local v1, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3861
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3863
    .local v4, "success":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 3864
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3865
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3868
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 3869
    .local v6, "type":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 3870
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3871
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "item"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3872
    const-string/jumbo v8, "name"

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3875
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 3876
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 3879
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3883
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 3884
    const/4 v4, 0x1

    .line 3889
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    nop

    .line 3890
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3892
    :catch_0
    move-exception v5

    .line 3893
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3895
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 3894
    :cond_3
    :goto_0
    goto :goto_1

    .line 3888
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3885
    :catch_1
    move-exception v5

    .line 3886
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FO]loadXmlLocked():path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  --> failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3889
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 3890
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3897
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]loadXmlLocked():path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3898
    if-eqz v4, :cond_4

    .line 3899
    return-object v1

    .line 3902
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]loadXmlLocked(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " file failed parsing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3903
    return-object v2

    .line 3888
    :goto_2
    nop

    .line 3889
    if-eqz v3, :cond_5

    .line 3890
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 3892
    :catch_2
    move-exception v5

    .line 3893
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3893
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 3894
    :cond_5
    :goto_3
    throw v2
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 4205
    const-string v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # Ljava/lang/String;

    .line 2466
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2467
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseActiveAudioPidsStr():pids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2472
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2473
    return-object v0

    .line 2476
    :cond_2
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2477
    .local v0, "uid":[Ljava/lang/String;
    return-object v0

    .line 2469
    .end local v0    # "uid":[Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4
    .param p1, "preceding"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4101
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4103
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4104
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 4105
    :cond_0
    return-void
.end method

.method private registerSimReceiver()V
    .locals 3

    .line 4395
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4396
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    return-void

    .line 4399
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4400
    const-string v0, "OnePlusProcessManager"

    const-string/jumbo v1, "registerSimReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    :cond_1
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4402
    const-string/jumbo v0, "persist.sys.oem.region"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    .line 4403
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 4404
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 4405
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->responseSIMStateChanged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4406
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->updateDozePolicyToDB(Z)V

    .line 4407
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4408
    const-string v0, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4409
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4410
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4411
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4412
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 4415
    :cond_2
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 4416
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/2addr v0, v2

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4417
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    :cond_3
    :goto_0
    return-void
.end method

.method private static removeDozeWhiteList(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 2062
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_1

    .line 2064
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 2065
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDozeWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2071
    :cond_1
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Cannot get DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :goto_1
    return-void
.end method

.method private removeTempWhiteList()V
    .locals 3

    .line 1766
    const-string v0, ""

    .line 1767
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1768
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1769
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1767
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1771
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1772
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 4225
    if-nez p1, :cond_0

    .line 4226
    return-void

    .line 4229
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4229
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 4230
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 4231
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "black_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4232
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4233
    .local v3, "blackbrdArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4234
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4235
    move v5, v0

    .line 4235
    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 4236
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4237
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4235
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4239
    .end local v5    # "i":I
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4240
    :try_start_2
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update blackbrdlist success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    const-string v5, "/data/data_bpm/black_alarm.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4241
    .end local v3    # "blackbrdArray":Lorg/json/JSONArray;
    goto :goto_2

    .line 4239
    .restart local v3    # "blackbrdArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4243
    .end local v3    # "blackbrdArray":Lorg/json/JSONArray;
    :cond_2
    :goto_2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "black_gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4244
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4245
    .local v3, "blackGpsArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4246
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    monitor-enter v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4247
    move v5, v0

    .line 4247
    .restart local v5    # "i":I
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4248
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4249
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4247
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4251
    .end local v5    # "i":I
    :cond_3
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4252
    :try_start_6
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update blackgpslist success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    const-string v5, "/data/data_bpm/black_gps.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4253
    .end local v3    # "blackGpsArray":Lorg/json/JSONArray;
    goto :goto_4

    .line 4251
    .restart local v3    # "blackGpsArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 4255
    .end local v3    # "blackGpsArray":Lorg/json/JSONArray;
    :cond_4
    :goto_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "force_stop_senfor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4256
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4257
    .local v3, "forceStopSensorArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4258
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    monitor-enter v4
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4259
    :try_start_9
    const-string v5, "OnePlusProcessManager"

    const-string v6, "[GpsFreeze] resolveConfigFromJSON mForceStopSensorPackage"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    move v5, v0

    .line 4260
    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 4261
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GpsFreeze] update mForceStopSensorPackage i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " |pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4263
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4260
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 4265
    .end local v5    # "i":I
    :cond_5
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4266
    :try_start_a
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GpsFreeze] update mForceStopSensorPackage success, mForceStopSensorPackage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    const-string v5, "/data/data_bpm/force_stop_sensor.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 4267
    .end local v3    # "forceStopSensorArray":Lorg/json/JSONArray;
    goto :goto_6

    .line 4265
    .restart local v3    # "forceStopSensorArray":Lorg/json/JSONArray;
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0

    .line 4269
    .end local v3    # "forceStopSensorArray":Lorg/json/JSONArray;
    :cond_6
    :goto_6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cfg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4270
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4271
    .local v3, "cfgArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 4272
    const-string v4, ""

    .line 4273
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    .line 4274
    move-object v6, v4

    move v4, v0

    .line 4274
    .local v4, "i":I
    .local v6, "value":Ljava/lang/String;
    :goto_7
    :try_start_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_a

    .line 4275
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "forceSwitch"

    .line 4276
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4277
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemvalue"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 4278
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string v8, "forceSwitch"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4279
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceSwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    const-string/jumbo v7, "off"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4281
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4282
    const-string v7, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v7, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4285
    :cond_7
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4286
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemvalue"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4287
    .local v7, "itemvalue":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string/jumbo v9, "version"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 4289
    .local v8, "cfgVersion":Ljava/lang/Integer;
    const-string v9, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cfgVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget v10, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    if-le v9, v10, :cond_9

    .line 4291
    const-string/jumbo v9, "off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4292
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4293
    const-string v9, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v9, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_8

    .line 4294
    :cond_8
    const-string/jumbo v9, "on"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4295
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4296
    const-string v10, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v10, v9}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4274
    .end local v7    # "itemvalue":Ljava/lang/String;
    .end local v8    # "cfgVersion":Ljava/lang/Integer;
    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 4301
    .end local v4    # "i":I
    :cond_a
    const-string v4, "/data/data_bpm/cfg.xml"

    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    invoke-static {v4, v7}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 4302
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 4303
    iget v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_b

    .line 4304
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4305
    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v4, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4307
    :cond_b
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 4308
    :try_start_e
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update cfg success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    .line 4308
    .end local v3    # "cfgArray":Lorg/json/JSONArray;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_9

    .line 4307
    .restart local v3    # "cfgArray":Lorg/json/JSONArray;
    .restart local v6    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0

    .line 4310
    .end local v3    # "cfgArray":Lorg/json/JSONArray;
    .end local v6    # "value":Ljava/lang/String;
    :cond_c
    :goto_9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "black_brd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4311
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4312
    .local v3, "brdArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v4
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    .line 4313
    :try_start_11
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4314
    move v5, v0

    .line 4314
    .restart local v5    # "i":I
    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 4315
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4316
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4314
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 4318
    .end local v5    # "i":I
    :cond_d
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 4319
    :try_start_12
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update brdlist success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    const-string v5, "/data/data_bpm/black_brd.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    .line 4320
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    goto :goto_b

    .line 4318
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v0

    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v0

    .line 4322
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    :cond_e
    :goto_b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4323
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4324
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4325
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    monitor-enter v4
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0

    .line 4326
    move v5, v0

    .line 4326
    .restart local v5    # "i":I
    :goto_c
    :try_start_15
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 4327
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4328
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4326
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 4330
    .end local v5    # "i":I
    :cond_f
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 4331
    :try_start_16
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update mBrdList success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    const-string v5, "/data/data_bpm/brd.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_0

    .line 4332
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    goto :goto_d

    .line 4330
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v0

    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v0

    .line 4334
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    :cond_10
    :goto_d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4335
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4336
    .local v3, "pkgArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4337
    .local v4, "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4338
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v5
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    .line 4339
    :try_start_19
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 4340
    move v6, v0

    .line 4340
    .local v6, "i":I
    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 4341
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4342
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4340
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 4344
    .end local v6    # "i":I
    :cond_11
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 4345
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 4346
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    const-string v6, "/data/data_bpm/pkg.xml"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4347
    const-string v5, "OnePlusProcessManager"

    const-string v6, "[OnlineConfig] update pkglist success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 4347
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "pkgArray":Lorg/json/JSONArray;
    .end local v4    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_f

    .line 4344
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "pkgArray":Lorg/json/JSONArray;
    .restart local v4    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_6
    move-exception v0

    :try_start_1b
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    throw v0
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 4229
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "pkgArray":Lorg/json/JSONArray;
    .end local v4    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4352
    .end local v1    # "index":I
    :cond_13
    goto :goto_10

    .line 4350
    :catch_0
    move-exception v0

    .line 4351
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_10
    return-void
.end method

.method private responseSIMStateChanged()Z
    .locals 5

    .line 4423
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4424
    return v1

    .line 4426
    :cond_0
    const/4 v0, 0x0

    .line 4428
    .local v0, "ret":Z
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4429
    .local v2, "mccCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 4430
    const-string/jumbo v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 4438
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4439
    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v4, v3}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 4435
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4436
    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4441
    :goto_1
    const/4 v0, 0x1

    .line 4442
    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/2addr v1, v3

    sput v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4443
    const-string/jumbo v1, "persist.sys.cgroup.flags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4446
    :cond_3
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 4447
    :cond_4
    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    :cond_5
    return v0
.end method

.method public static resumeAllProcess(Ljava/lang/String;)V
    .locals 1
    .param p0, "why"    # Ljava/lang/String;

    .line 3142
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3143
    return-void

    .line 3145
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3146
    return-void

    .line 3148
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3149
    return-void

    .line 3151
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_3

    .line 3152
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    .line 3154
    :cond_3
    return-void
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .line 3585
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3586
    return-void

    .line 3588
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3589
    return-void

    .line 3591
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;Z)V

    .line 3592
    return-void
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "isResumeTop"    # Z

    .line 3595
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3596
    return-void

    .line 3598
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3599
    return-void

    .line 3601
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3602
    return-void

    .line 3604
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3605
    return-void

    .line 3611
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3616
    return-void
.end method

.method public static final resumeProcessByUID_out_Delay(ILjava/lang/String;I)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "suspendDelayTime"    # I

    .line 3633
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3634
    return-void

    .line 3636
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3637
    return-void

    .line 3639
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3640
    return-void

    .line 3642
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3643
    return-void

    .line 3649
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    .line 3653
    return-void
.end method

.method private resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3217
    if-nez p1, :cond_0

    .line 3218
    return-void

    .line 3220
    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 3221
    return-void

    .line 3223
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3224
    const/4 v0, 0x0

    .line 3225
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3225
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3226
    const/4 v0, 0x0

    .line 3228
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 3231
    nop

    .line 3232
    if-nez v0, :cond_3

    .line 3233
    goto :goto_0

    .line 3235
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 3237
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v2, v3, :cond_2

    .line 3238
    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v3, "resumeRelateProcess connection"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    goto :goto_0

    .line 3229
    :catch_0
    move-exception v2

    .line 3230
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 3243
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 3244
    const/4 v0, 0x0

    .line 3245
    .local v0, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 3246
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3247
    .local v1, "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3247
    .local v2, "it":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3248
    const/4 v0, 0x0

    .line 3250
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 3253
    nop

    .line 3254
    if-nez v0, :cond_6

    .line 3255
    goto :goto_1

    .line 3257
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    .line 3258
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v4, :cond_5

    .line 3259
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v4, "resumeRelateProcess conProviders"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    goto :goto_1

    .line 3251
    :catch_1
    move-exception v3

    .line 3252
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 3266
    .end local v0    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v1    # "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 3267
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    .line 3268
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3269
    .local v0, "adjustApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_8

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v1, v2, :cond_8

    .line 3270
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v2, "resumeRelateProcess adjSource"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3274
    .end local v0    # "adjustApp":Lcom/android/server/am/ProcessRecord;
    :cond_8
    return-void
.end method

.method private resumeRelateUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 1233
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v1, p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1235
    .local v1, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1238
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1239
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-direct {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1241
    .end local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 1242
    return-void

    .line 1236
    .restart local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 1241
    .end local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static saveBpmStsLocked(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sts"    # Z

    .line 4002
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveBpmStsLocked():path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 4004
    :cond_0
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4005
    .local v0, "endLine":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v1

    .line 4007
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 4009
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 4010
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4011
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4012
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4013
    const-string/jumbo v5, "gs"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4014
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4016
    const-string/jumbo v5, "p"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4017
    const-string v5, "att"

    if-eqz p1, :cond_1

    const-string/jumbo v6, "true"

    goto :goto_0

    :cond_1
    const-string v6, "false"

    :goto_0
    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4018
    const-string/jumbo v5, "p"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4019
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4021
    const-string/jumbo v5, "gs"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4022
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4023
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4024
    nop

    .line 4030
    nop

    .line 4031
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4033
    :catch_0
    move-exception v1

    .line 4034
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4034
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 4035
    :goto_1
    nop

    .line 4024
    :goto_2
    return v4

    .line 4029
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 4025
    :catch_1
    move-exception v1

    .line 4026
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4027
    const/4 v3, 0x0

    .line 4030
    if-eqz v2, :cond_2

    .line 4031
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 4033
    :catch_2
    move-exception v4

    .line 4034
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 4034
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 4035
    :cond_2
    :goto_3
    nop

    .line 4027
    :goto_4
    return v3

    .line 4029
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 4030
    if-eqz v2, :cond_3

    .line 4031
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 4033
    :catch_3
    move-exception v3

    .line 4034
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 4034
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 4035
    :cond_3
    :goto_6
    throw v1
.end method

.method private static saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    .locals 10
    .param p1, "patch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4040
    .local p0, "config":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 4041
    .local v0, "stream":Ljava/io/FileOutputStream;
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4043
    .local v1, "endLine":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 4045
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 4046
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4047
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4048
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4049
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4050
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4051
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4052
    .local v6, "pkg":Ljava/lang/String;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    if-eqz v6, :cond_0

    .line 4054
    const-string/jumbo v7, "p"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4055
    const-string v7, "att"

    invoke-interface {v3, v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4056
    const-string/jumbo v7, "p"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4057
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4059
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 4060
    :cond_1
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4061
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4067
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "iterator":Ljava/util/Iterator;
    nop

    .line 4068
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4070
    :catch_0
    move-exception v3

    .line 4071
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 4073
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 4072
    :goto_1
    nop

    .line 4074
    :goto_2
    return v2

    .line 4066
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 4062
    :catch_1
    move-exception v3

    .line 4063
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4064
    nop

    .line 4067
    if-eqz v0, :cond_2

    .line 4068
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 4070
    :catch_2
    move-exception v4

    .line 4071
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 4071
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 4072
    :cond_2
    :goto_3
    nop

    .line 4064
    :goto_4
    return v2

    .line 4066
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 4067
    if-eqz v0, :cond_3

    .line 4068
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 4070
    :catch_3
    move-exception v3

    .line 4071
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 4071
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 4072
    :cond_3
    :goto_6
    throw v2
.end method

.method private static saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3907
    .local p1, "confMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveXmlLocked():path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3908
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3909
    return v0

    .line 3912
    :cond_0
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3913
    .local v1, "endLine":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 3915
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 3917
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 3918
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3919
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3920
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3921
    const-string v6, "cfg"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3922
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3924
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3925
    .local v7, "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "item"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3926
    const-string/jumbo v8, "name"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3928
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3929
    const-string/jumbo v8, "item"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3930
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3931
    .end local v7    # "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 3933
    :cond_1
    const-string v6, "cfg"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3934
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3935
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3936
    nop

    .line 3942
    nop

    .line 3943
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3945
    :catch_0
    move-exception v0

    .line 3946
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3946
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 3947
    :goto_1
    nop

    .line 3936
    :goto_2
    return v5

    .line 3941
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 3937
    :catch_1
    move-exception v2

    .line 3938
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3939
    nop

    .line 3942
    if-eqz v3, :cond_2

    .line 3943
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 3945
    :catch_2
    move-exception v4

    .line 3946
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 3946
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 3947
    :cond_2
    :goto_3
    nop

    .line 3939
    :goto_4
    return v0

    .line 3941
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 3942
    if-eqz v3, :cond_3

    .line 3943
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 3945
    :catch_3
    move-exception v2

    .line 3946
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3946
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 3947
    :cond_3
    :goto_6
    throw v0
.end method

.method private scheduleChangeForGpsProcess(ZI)V
    .locals 4
    .param p1, "foregroundActivities"    # Z
    .param p2, "uid"    # I

    .line 1104
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] scheduleForegroundChangeForGpsProcess uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1106
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1110
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, p2, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1112
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1113
    :cond_2
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    if-ne v2, p2, :cond_4

    .line 1114
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "OnePlusProcessManager"

    const-string v1, "[GpsFreeze] uid same, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_3
    return-void

    .line 1118
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1119
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->canFreezeGps(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1123
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, p2, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    :goto_0
    return-void
.end method

.method private scheduleForegroundChangeMessage(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 1889
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1890
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1891
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1892
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1893
    return-void
.end method

.method private scheduleLocationReceiverUidsChangeForGpsProcess(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "isAdd"    # Z

    .line 1089
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] scheduleLocationReceiverUidsChangeForGpsProcess uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isAdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isBlockedGpsUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1095
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canFreezeGps(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1098
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1101
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 1091
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OnePlusProcessManager"

    const-string v1, "[GpsFreeze] this uid dont need to block, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_4
    return-void
.end method

.method private scheduleResumeMessage(IJLjava/lang/String;I)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;
    .param p5, "suspendTime"    # I

    .line 2225
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 2226
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2229
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2230
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2231
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2232
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2233
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2234
    return-void

    .line 2227
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private scheduleResumeUid(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .line 3060
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private scheduleResumeUid(ILjava/lang/String;I)Z
    .locals 10
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "suspendDelayTime"    # I

    .line 3064
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3065
    return v1

    .line 3070
    :cond_0
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_1

    .line 3071
    return v1

    .line 3073
    :cond_1
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3075
    .local v0, "mPendingFrozen":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3091
    :cond_3
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 3092
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleResumeUid -> adjustSuspendMessage for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " delay code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_4
    const/4 v2, 0x2

    if-ne p3, v2, :cond_5

    .line 3094
    const-wide/16 v2, 0x4e20

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    goto :goto_1

    .line 3096
    :cond_5
    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    .line 3099
    :goto_1
    return v1

    .line 3076
    :cond_6
    :goto_2
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3077
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v5, p1, -0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3078
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    add-int/lit16 v5, p1, -0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3079
    monitor-exit v3

    return v2

    .line 3081
    :cond_7
    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeMessage(IJLjava/lang/String;I)V

    .line 3083
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3084
    :try_start_1
    invoke-static {p1, v1}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 3085
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3086
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3087
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_8

    .line 3088
    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleResumeUid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " why = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    :cond_8
    return v2

    .line 3085
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 3086
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private scheduleSuspendUid(IJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .line 2205
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 2206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2207
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2208
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSuspendUid not suspend FG Uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2210
    monitor-exit v0

    return-void

    .line 2212
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2216
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleSuspendUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2219
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2220
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2221
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2222
    return-void

    .line 2212
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static sendSignal(II)V
    .locals 0
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .line 851
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 852
    return-void
.end method

.method public static sendTimeOutMmgDelayed(Landroid/os/Message;II)V
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "timeoutUid"    # I
    .param p2, "timeoutPid"    # I

    .line 4494
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 4495
    return-void

    .line 4497
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 4498
    return-void

    .line 4500
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_2

    .line 4501
    return-void

    .line 4503
    :cond_2
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 4504
    iput p2, p0, Landroid/os/Message;->arg2:I

    .line 4505
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4506
    return-void
.end method

.method private setCGroupStateLocked(IZ)Z
    .locals 17
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 556
    const/4 v3, 0x0

    .line 557
    .local v3, "indexCanUids":I
    const/4 v4, 0x0

    .line 558
    .local v4, "canUid":Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    monitor-enter v5

    .line 559
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    .line 560
    if-ltz v3, :cond_0

    .line 561
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 566
    .end local v4    # "canUid":Ljava/lang/Integer;
    .local v0, "canUid":Ljava/lang/Integer;
    move-object v4, v0

    goto :goto_0

    .line 563
    .end local v0    # "canUid":Ljava/lang/Integer;
    .restart local v4    # "canUid":Ljava/lang/Integer;
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 564
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 568
    const/16 v0, 0x2710

    const/4 v5, 0x1

    if-lt v2, v0, :cond_1c

    .line 569
    const/4 v0, 0x0

    move-object v6, v0

    .line 571
    .local v6, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/freezer.state"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 572
    .local v8, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 573
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 574
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v10, v0

    .line 575
    .local v10, "pf":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 578
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 579
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 580
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : file not exists : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 581
    nop

    .line 679
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 680
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    if-eqz v6, :cond_3

    .line 686
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 687
    const/4 v6, 0x0

    goto :goto_1

    .line 689
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 692
    :cond_3
    :goto_1
    nop

    .line 581
    :goto_2
    return v7

    .line 683
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 584
    .end local v10    # "pf":Ljava/io/File;
    :cond_4
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 587
    if-eqz p2, :cond_11

    .line 588
    const/4 v11, 0x0

    .line 589
    .local v11, "index":I
    const/4 v12, 0x0

    .line 590
    .local v12, "isAdjustUid":Z
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    .line 591
    :try_start_6
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 592
    :try_start_7
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v12, v0

    .line 593
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 594
    if-nez v12, :cond_e

    .line 595
    :try_start_8
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v11, v0

    .line 596
    if-gez v11, :cond_5

    .line 597
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-static {v2, v5}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 605
    :cond_5
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 607
    :try_start_9
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    .line 608
    :try_start_a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 609
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 610
    :try_start_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v11, v0

    .line 611
    if-ltz v11, :cond_6

    .line 612
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 613
    invoke-static {v2, v7}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 615
    :cond_6
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 616
    :try_start_c
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    .line 617
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCGroupStateLocked: skip to freeze "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " due to mAdjustUids"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_7
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 679
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 680
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_8
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 685
    nop

    .line 686
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 687
    const/4 v6, 0x0

    goto :goto_3

    .line 689
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 692
    :goto_3
    nop

    .line 618
    :goto_4
    return v7

    .line 683
    :catchall_1
    move-exception v0

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v0

    .line 615
    :catchall_2
    move-exception v0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v0

    .line 620
    :cond_9
    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 621
    if-gez v11, :cond_d

    .line 622
    :try_start_12
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .line 623
    :try_start_13
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_a

    .line 624
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 626
    :cond_a
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 627
    if-eqz v4, :cond_d

    .line 628
    :try_start_14
    monitor-enter v4
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    .line 629
    :try_start_15
    const-string v0, "FROZEN"

    move-object v13, v0

    .line 630
    .local v13, "freeze":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v14, v0

    .line 631
    .local v14, "statebuffer":[B
    invoke-virtual {v6, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 633
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_b

    .line 634
    const-string v0, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCGroupStateLocked "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " FROZEN"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_b
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 636
    :try_start_16
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 637
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 639
    :cond_c
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 640
    .end local v13    # "freeze":Ljava/lang/String;
    .end local v14    # "statebuffer":[B
    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_5

    .line 639
    .restart local v13    # "freeze":Ljava/lang/String;
    .restart local v14    # "statebuffer":[B
    :catchall_3
    move-exception v0

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v0

    .line 640
    .end local v13    # "freeze":Ljava/lang/String;
    .end local v14    # "statebuffer":[B
    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 626
    :catchall_5
    move-exception v0

    :try_start_1b
    monitor-exit v13
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 643
    .end local v11    # "index":I
    .end local v12    # "isAdjustUid":Z
    :cond_d
    :goto_5
    goto/16 :goto_8

    .line 620
    .restart local v11    # "index":I
    .restart local v12    # "isAdjustUid":Z
    :catchall_6
    move-exception v0

    :try_start_1d
    monitor-exit v13
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :try_start_1e
    throw v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 601
    :cond_e
    :try_start_1f
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_f

    .line 602
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCGroupStateLocked: skip to freeze "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " due to mAdjustUids"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_f
    monitor-exit v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 679
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 680
    :try_start_20
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_10
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 685
    nop

    .line 686
    :try_start_21
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2

    .line 687
    const/4 v6, 0x0

    goto :goto_6

    .line 689
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 692
    :goto_6
    nop

    .line 603
    :goto_7
    return v7

    .line 683
    :catchall_7
    move-exception v0

    :try_start_22
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    throw v0

    .line 593
    :catchall_8
    move-exception v0

    :try_start_23
    monitor-exit v14
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :try_start_24
    throw v0

    .line 605
    :catchall_9
    move-exception v0

    monitor-exit v13
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    throw v0

    .line 644
    .end local v11    # "index":I
    .end local v12    # "isAdjustUid":Z
    :cond_11
    const/4 v5, 0x0

    .line 645
    .local v5, "index":I
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    .line 646
    :try_start_26
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v5, v0

    .line 647
    if-ltz v5, :cond_12

    .line 648
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 649
    invoke-static {v2, v7}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 651
    :cond_12
    monitor-exit v11
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .line 652
    :try_start_27
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_4
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 653
    :try_start_28
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_13

    .line 654
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 656
    :cond_13
    monitor-exit v11
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    .line 657
    if-eqz v4, :cond_16

    .line 658
    :try_start_29
    monitor-enter v4
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_4
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    .line 659
    :try_start_2a
    const-string v0, "THAWED"

    move-object v11, v0

    .line 660
    .local v11, "thawed":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v12, v0

    .line 661
    .local v12, "statebuffer":[B
    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 663
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_14

    .line 664
    const-string v0, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCGroupStateLocked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " THAWED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_14
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 666
    :try_start_2b
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 667
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 669
    :cond_15
    monitor-exit v13
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    .line 670
    .end local v11    # "thawed":Ljava/lang/String;
    .end local v12    # "statebuffer":[B
    :try_start_2c
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    goto :goto_8

    .line 669
    .restart local v11    # "thawed":Ljava/lang/String;
    .restart local v12    # "statebuffer":[B
    :catchall_a
    move-exception v0

    :try_start_2d
    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    :try_start_2e
    throw v0

    .line 670
    .end local v11    # "thawed":Ljava/lang/String;
    .end local v12    # "statebuffer":[B
    :catchall_b
    move-exception v0

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    :try_start_2f
    throw v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_4
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    .line 673
    .end local v5    # "index":I
    :cond_16
    :goto_8
    nop

    .line 679
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v12

    .line 680
    :try_start_30
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_17
    monitor-exit v12
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    .line 685
    nop

    .line 686
    :try_start_31
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_3

    .line 687
    const/4 v6, 0x0

    goto :goto_9

    .line 689
    :catch_3
    move-exception v0

    move-object v5, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 692
    :goto_9
    nop

    .line 673
    :goto_a
    const/4 v5, 0x1

    return v5

    .line 683
    :catchall_c
    move-exception v0

    :try_start_32
    monitor-exit v12
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_c

    throw v0

    .line 656
    .restart local v5    # "index":I
    :catchall_d
    move-exception v0

    :try_start_33
    monitor-exit v11
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    :try_start_34
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_4
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    .line 651
    :catchall_e
    move-exception v0

    :try_start_35
    monitor-exit v11
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    :try_start_36
    throw v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_4
    .catchall {:try_start_36 .. :try_end_36} :catchall_f

    .line 679
    .end local v5    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v9    # "f":Ljava/io/File;
    :catchall_f
    move-exception v0

    move-object v5, v0

    goto :goto_d

    .line 674
    :catch_4
    move-exception v0

    move-object v5, v0

    .line 675
    .local v5, "ex":Ljava/io/IOException;
    :try_start_37
    const-string v0, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException -->  setCGroupStateLocked():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_f

    .line 677
    nop

    .line 679
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 680
    :try_start_38
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_18
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_10

    .line 685
    if-eqz v6, :cond_19

    .line 686
    :try_start_39
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_5

    .line 687
    const/4 v6, 0x0

    goto :goto_b

    .line 689
    :catch_5
    move-exception v0

    move-object v8, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 692
    :cond_19
    :goto_b
    nop

    .line 677
    :goto_c
    return v7

    .line 683
    :catchall_10
    move-exception v0

    :try_start_3a
    monitor-exit v8
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_10

    throw v0

    .line 679
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_d
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 680
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_1a
    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_11

    .line 685
    if-eqz v6, :cond_1b

    .line 686
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_6

    .line 687
    const/4 v6, 0x0

    goto :goto_e

    .line 689
    :catch_6
    move-exception v0

    move-object v7, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OnePlusProcessManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 692
    :cond_1b
    :goto_e
    throw v5

    .line 683
    :catchall_11
    move-exception v0

    :try_start_3d
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_11

    throw v0

    .line 695
    .end local v6    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_1c
    const/4 v5, 0x1

    return v5

    .line 566
    :catchall_12
    move-exception v0

    :try_start_3e
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_12

    throw v0
.end method

.method public static setCurrentInputMethod(Landroid/content/pm/ServiceInfo;)V
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .line 2428
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    .line 2429
    return-void
.end method

.method public static setScreenState(Z)Z
    .locals 2
    .param p0, "screenState"    # Z

    .line 3171
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3172
    :try_start_0
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 3173
    monitor-exit v0

    .line 3174
    const/4 v0, 0x1

    return v0

    .line 3173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 5
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .line 3744
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3745
    return v1

    .line 3747
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3748
    return v1

    .line 3750
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3751
    return v1

    .line 3753
    :cond_2
    const-string/jumbo v0, "skipBroadcast"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3754
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v4, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3755
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 3756
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BPM Denial: receiving "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") due to sender "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is ordered "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ;  ordered "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3762
    const/4 v0, 0x1

    return v0

    .line 3764
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3765
    return v1
.end method

.method private skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .line 3415
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3416
    return v0

    .line 3418
    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 3419
    return v0

    .line 3421
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2

    .line 3422
    return v0

    .line 3424
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_3

    .line 3425
    return v0

    .line 3427
    :cond_3
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3428
    .local v1, "broadcastAction":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_a

    .line 3429
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "cn.kuwo.player"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3430
    return v3

    .line 3432
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v4

    .line 3433
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3434
    .local v6, "action":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3436
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3438
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkProcessRecord "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for action ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3439
    monitor-exit v4

    return v0

    .line 3441
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x12

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_7

    .line 3442
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3443
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3444
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 3445
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip Broadcast: r="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; app="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_6
    monitor-exit v4

    return v3

    .line 3450
    :cond_7
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resume "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for action ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3451
    monitor-exit v4

    return v0

    .line 3453
    .end local v6    # "action":Ljava/lang/String;
    :cond_8
    goto/16 :goto_0

    .line 3454
    :cond_9
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3456
    :cond_a
    :goto_1
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-lt v4, v2, :cond_f

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v4, v2, :cond_f

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v2, v4, :cond_f

    if-eqz v1, :cond_f

    .line 3459
    const-string v2, "AlarmTaskSchedule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.igexin.sdk.action"

    .line 3460
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AlarmTaskScheduleBak"

    .line 3461
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    .line 3466
    :cond_b
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3467
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 3468
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip Broadcast mBlackAlarmList: a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; app="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :cond_c
    return v3

    .line 3462
    :cond_d
    :goto_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 3463
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip Broadcast: a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; app="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    :cond_e
    return v3

    .line 3472
    :cond_f
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3473
    return v0
.end method

.method private startComputeUidTraffic(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1924
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1925
    .local v0, "msg2":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1926
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1927
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1928
    return-void
.end method

.method private startResumeUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 2782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    .line 2783
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2784
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2786
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2787
    const-string v0, "OnePlusProcessManager"

    const-string/jumbo v1, "startResumeUid --------- end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_0
    return-void

    .line 2785
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startSuspendUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 2738
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    move-result v1

    .line 2739
    .local v1, "isSuspended":Z
    if-eqz v1, :cond_5

    .line 2740
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2741
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2742
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2743
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2744
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2753
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2754
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v0}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 2756
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2757
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 2759
    :cond_3
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v2, :cond_4

    .line 2760
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2761
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2762
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2763
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2765
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    invoke-interface {v3, v2, v0, v0}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2767
    goto :goto_0

    .line 2766
    :catch_0
    move-exception v0

    .line 2771
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2772
    :try_start_2
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2773
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2742
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2776
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 2777
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSuspendUid uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isSuspended ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ---- end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_6
    return v1
.end method

.method private tryAddScreenOffTrafficUids()V
    .locals 5

    .line 1931
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1932
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1933
    .local v1, "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1935
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1936
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1937
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    goto :goto_0

    .line 1939
    .end local v1    # "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_0
    monitor-exit v0

    .line 1940
    return-void

    .line 1939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateBPMEnableState(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .line 2924
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2925
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBPMEnableState # flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 2927
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2928
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2930
    move v2, v0

    .line 2930
    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2931
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2932
    .local v3, "uid":I
    const-string/jumbo v4, "updateBPMEnableState"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 2930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2935
    .end local v2    # "i":I
    .end local v3    # "uid":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2937
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->computeThreeAppState()V

    .line 2938
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 2939
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2941
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2942
    nop

    .line 2942
    .local v0, "i":I
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2943
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2944
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 2942
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2946
    .end local v0    # "i":I
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_3
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2948
    :cond_4
    :goto_3
    return-void
.end method

.method private updateDozePolicyToDB(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 2951
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2952
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDozePolicyToDB # flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v0, v1, :cond_1

    .line 2954
    const/4 p1, 0x0

    .line 2956
    :cond_1
    if-eqz p1, :cond_2

    .line 2957
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2959
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2961
    :goto_0
    return-void
.end method

.method private updateForegroundActivityChange(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 1902
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1905
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1906
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1908
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    goto :goto_0

    .line 1909
    :catch_0
    move-exception v1

    .line 1919
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1920
    return-void
.end method

.method public static updateImportantUidChange(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1534
    .local p0, "mNewImportUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 1535
    return-void

    .line 1537
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_2

    .line 1538
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1540
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 1541
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImportantUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1543
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1545
    :cond_2
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZ)V
    .locals 1
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z

    .line 1569
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 1570
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZZ)V
    .locals 5
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z
    .param p3, "isGps"    # Z

    .line 1574
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] updateLocationReceiverUidsChange mUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isAdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |isReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |isGps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1576
    return-void

    .line 1578
    :cond_1
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_8

    .line 1579
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_8

    .line 1580
    if-eqz p2, :cond_5

    .line 1581
    if-eqz p1, :cond_3

    .line 1583
    if-eqz p3, :cond_2

    .line 1584
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1586
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1589
    :cond_3
    const-wide/16 v0, 0x2

    if-eqz p3, :cond_4

    .line 1590
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 1591
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1592
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 1593
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1594
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v3, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v3, v0

    .line 1595
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    goto :goto_0

    .line 1598
    :cond_4
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 1599
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1600
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 1601
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1602
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v3, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v3, v0

    .line 1603
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    goto :goto_0

    .line 1608
    :cond_5
    if-eqz p1, :cond_6

    .line 1610
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1612
    :cond_6
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1613
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1617
    :cond_7
    :goto_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleLocationReceiverUidsChangeForGpsProcess(IZ)V

    .line 1620
    :cond_8
    return-void
.end method

.method public static updateScreenState(Z)V
    .locals 3
    .param p0, "screenState"    # Z

    .line 3103
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3104
    return-void

    .line 3106
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3107
    if-eqz p0, :cond_1

    .line 3108
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 3109
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 3111
    :cond_1
    return-void

    .line 3113
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3120
    if-eqz p0, :cond_3

    .line 3121
    const/4 v2, 0x0

    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 3122
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 3136
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 3138
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3139
    return-void

    .line 3138
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static updateTouchWindowUidChange(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1548
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 1549
    return-void

    .line 1551
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_2

    .line 1552
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1554
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 1555
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1557
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1559
    :cond_2
    return-void
.end method

.method private static writePidToTasksFile(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 753
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    .line 754
    return-void
.end method

.method private static writePidToTasksFile(IIZ)V
    .locals 17
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    move/from16 v1, p0

    move/from16 v2, p1

    .line 757
    move/from16 v3, p2

    const/16 v0, 0x2710

    if-ge v1, v0, :cond_0

    .line 758
    return-void

    .line 760
    :cond_0
    const/4 v4, -0x1

    .line 761
    .local v4, "pidState":I
    const/4 v5, 0x0

    .line 762
    .local v5, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    move-object v6, v0

    .line 764
    .local v6, "f":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/freezer.state"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 765
    .local v7, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 766
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 767
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 768
    .local v8, "pf":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 771
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 772
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 773
    const-string v0, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception : file not exists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 827
    if-eqz v5, :cond_2

    .line 828
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    const/4 v5, 0x0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 832
    .local v0, "ec":Ljava/io/IOException;
    const-string v9, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " : close Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 832
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "ec":Ljava/io/IOException;
    goto :goto_1

    .line 834
    :cond_2
    :goto_0
    nop

    .line 774
    :goto_1
    return-void

    .line 777
    .end local v8    # "pf":Ljava/io/File;
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 778
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 779
    :try_start_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 780
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 783
    :cond_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 784
    :try_start_4
    const-string v0, "THAWED"

    move-object v8, v0

    .line 785
    .local v8, "thawed":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v9, v0

    .line 786
    .local v9, "statebuffer":[B
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 787
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 788
    :try_start_5
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 789
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 790
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 792
    :cond_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 794
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/tasks"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 795
    .local v10, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 796
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 797
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 798
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 799
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 802
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 803
    const-string v0, "OnePlusProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not exist ------- Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 827
    nop

    .line 828
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 829
    const/4 v5, 0x0

    goto :goto_2

    .line 831
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 832
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : close Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 832
    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "ec":Ljava/io/IOException;
    goto :goto_3

    .line 834
    :goto_2
    nop

    .line 804
    :goto_3
    return-void

    .line 807
    :cond_7
    :try_start_8
    const-string v0, ""

    .line 808
    .local v0, "pidsStr":Ljava/lang/String;
    const-string v11, ""

    .line 809
    .local v11, "pidsStr_debug":Ljava/lang/String;
    const-string v12, ""

    .line 810
    .local v12, "processName":Ljava/lang/String;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 811
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 812
    .local v13, "pidbuffer":[B
    invoke-virtual {v5, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 814
    sget-boolean v14, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 815
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "writePidToTasksFile():uid="

    .line 815
    .end local v0    # "pidsStr":Ljava/lang/String;
    .local v16, "pidsStr":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", retry="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> ok"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 827
    .end local v7    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v8    # "thawed":Ljava/lang/String;
    .end local v9    # "statebuffer":[B
    .end local v10    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v11    # "pidsStr_debug":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    .end local v13    # "pidbuffer":[B
    .end local v16    # "pidsStr":Ljava/lang/String;
    :cond_8
    nop

    .line 828
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 829
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 831
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 832
    .local v0, "ec":Ljava/io/IOException;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    .line 792
    .end local v0    # "ec":Ljava/io/IOException;
    .restart local v7    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v8    # "thawed":Ljava/lang/String;
    .restart local v9    # "statebuffer":[B
    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 783
    .end local v8    # "thawed":Ljava/lang/String;
    .end local v9    # "statebuffer":[B
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 826
    .end local v7    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_7

    .line 817
    :catch_3
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/io/IOException;
    :try_start_e
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", retry = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", , pidState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 818
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v3, :cond_9

    .line 823
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFileDelayed(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 827
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_9
    if-eqz v5, :cond_a

    .line 828
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 829
    const/4 v0, 0x0

    .line 834
    .end local v5    # "cgroupout":Ljava/io/FileOutputStream;
    .local v0, "cgroupout":Ljava/io/FileOutputStream;
    move-object v5, v0

    goto :goto_5

    .line 831
    .end local v0    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "cgroupout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v7, v0

    .line 832
    .local v0, "ec":Ljava/io/IOException;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v9, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : close Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 832
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v0    # "ec":Ljava/io/IOException;
    goto :goto_6

    .line 834
    :cond_a
    :goto_5
    nop

    .line 836
    :goto_6
    return-void

    .line 826
    .end local v5    # "cgroupout":Ljava/io/FileOutputStream;
    .local v6, "cgroupout":Ljava/io/FileOutputStream;
    .local v7, "f":Ljava/io/File;
    :goto_7
    nop

    .line 827
    if-eqz v6, :cond_b

    .line 828
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 829
    const/4 v6, 0x0

    goto :goto_8

    .line 831
    :catch_5
    move-exception v0

    move-object v8, v0

    .line 832
    .restart local v0    # "ec":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : close Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 832
    const-string v9, "OnePlusProcessManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "ec":Ljava/io/IOException;
    nop

    .line 834
    :cond_b
    :goto_8
    throw v5
.end method


# virtual methods
.method checkTrafficUid(I)Z
    .locals 16
    .param p1, "uid"    # I

    .line 2002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2003
    .local v0, "now":J
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    .line 2004
    .local v2, "obj":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2005
    return v3

    .line 2007
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 2008
    .local v4, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 2009
    .local v6, "rxBytes":J
    const-wide/16 v8, 0x1

    .line 2010
    .local v8, "timeDuring":J
    sget-wide v10, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 2011
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    div-long v8, v10, v12

    .line 2013
    :cond_1
    const-wide/16 v10, 0x1

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2

    .line 2014
    const-wide/16 v8, 0x1

    .line 2016
    :cond_2
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    sub-long v10, v6, v10

    div-long/2addr v10, v8

    const-wide/32 v12, 0x32000

    cmp-long v10, v12, v10

    const/4 v11, 0x1

    if-gez v10, :cond_3

    .line 2017
    return v11

    .line 2018
    :cond_3
    iget-wide v14, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    sub-long v14, v4, v14

    div-long/2addr v14, v8

    cmp-long v10, v12, v14

    if-gez v10, :cond_4

    .line 2019
    return v11

    .line 2021
    :cond_4
    return v3
.end method

.method public computeThreeAppState()V
    .locals 6

    .line 2974
    const/4 v0, 0x0

    .line 2975
    .local v0, "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2976
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    .line 2977
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2978
    if-nez v0, :cond_0

    .line 2979
    return-void

    .line 2982
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2983
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2984
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2985
    goto :goto_1

    .line 2987
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-nez v3, :cond_2

    .line 2989
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 2990
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2995
    .end local v1    # "i":I
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    return-void

    .line 2977
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The BPM status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    const-string v0, "@The BPM list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 4110
    const-string v0, "@The PKG list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 4111
    const-string v0, "@The BRD list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 4113
    const-string v0, "UidPidState list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4115
    const/4 v1, 0x0

    move v2, v1

    .line 4115
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t mUidPidState uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4118
    .local v3, "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v4, v1

    .line 4118
    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 4119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t \t  mUidPidState pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4115
    .end local v3    # "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4122
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4123
    const-string v0, "Suspend list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4125
    move v0, v1

    .line 4125
    .local v0, "i":I
    :goto_2
    :try_start_1
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t suspend uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4128
    .end local v0    # "i":I
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4129
    const-string/jumbo v0, "mGpsReceiverLocationUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    move v0, v1

    .line 4131
    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 4132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mGpsReceiverLocationUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4135
    .end local v0    # "i":I
    :cond_3
    const-string/jumbo v0, "mBlackGpsList list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    move v0, v1

    .line 4136
    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 4137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mBlackGpsList uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4140
    .end local v0    # "i":I
    :cond_4
    const-string/jumbo v0, "mForceStopSensorPackage list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    move v0, v1

    .line 4141
    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 4142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mForceStopSensorPackage uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4145
    .end local v0    # "i":I
    :cond_5
    const-string/jumbo v0, "mOtherReceiverLocationUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    move v0, v1

    .line 4147
    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 4148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mOtherReceiverLocationUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 4149
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4148
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4152
    .end local v0    # "i":I
    :cond_6
    const-string/jumbo v0, "mStatusLocationUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    move v0, v1

    .line 4154
    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 4155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mStatusLocationUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4157
    .end local v0    # "i":I
    :cond_7
    const-string/jumbo v0, "mFrontWindowTouchUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4160
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4161
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4163
    .local v3, "mUid":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t mFrontWindowTouchUids uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 4165
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4166
    const-string v0, "UnFrozenReasonUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    move v0, v1

    .line 4167
    .restart local v0    # "i":I
    :goto_9
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 4168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mUnFrozenUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reseason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 4169
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4168
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4171
    .end local v0    # "i":I
    :cond_9
    const-string v0, "ResumeBroadcastUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4175
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    .line 4176
    move v0, v1

    .line 4176
    .restart local v0    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 4177
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 4178
    .local v2, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4179
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    if-eqz v2, :cond_a

    .line 4181
    move v4, v1

    .line 4181
    .restart local v4    # "j":I
    :goto_b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 4182
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4183
    .local v5, "broadcasts":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4184
    .local v6, "mCount":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " broadcast ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4181
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 4176
    .end local v2    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "j":I
    .end local v5    # "broadcasts":Ljava/lang/String;
    .end local v6    # "mCount":Ljava/lang/Integer;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4191
    .end local v0    # "i":I
    .end local v3    # "uid":I
    :cond_b
    const-string v0, "SuspendProcessHandler list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 4193
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "\t message list"

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4196
    :cond_c
    const-string v0, "ResumeProcessHandler list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4197
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 4198
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "\t message list"

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4202
    :cond_d
    return-void

    .line 4165
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4128
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 4122
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public getBPMEnable()Z
    .locals 3

    .line 2875
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2876
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBPMEnable():mBPMStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method loadNPMConfigFiles()V
    .locals 7

    .line 2132
    const-string v0, "/data/data_bpm/brd.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 2133
    const-string v0, "/data/data_bpm/pkg.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 2134
    const-string v0, "/data/data_bpm/black_gps.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 2135
    const-string v0, "/data/data_bpm/black_brd.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 2136
    const-string v0, "/data/data_bpm/black_alarm.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 2137
    const-string v0, "/data/data_bpm/force_stop_sensor.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    .line 2139
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles: mPkgList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles: mBrdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mBlackBrdList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mBlackGpsList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mBlackAlarmList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mForceStopSensorPackage= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const-string v0, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2148
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2149
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2150
    .local v3, "temp":Z
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]UPDATE_STS: before: temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 2152
    sget v4, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 2153
    iget v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v4, v2, :cond_0

    .line 2154
    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 2155
    const-string v1, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 2156
    :cond_0
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 2157
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 2158
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 2160
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 2164
    .end local v3    # "temp":Z
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 2166
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    return-void
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 4096
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 4097
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 4098
    return-void
.end method

.method prepareBPMConfigFiles()V
    .locals 5

    .line 2544
    const-string v0, "OnePlusProcessManager"

    const-string v1, "[FO]prepareBPMConfigFiles()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data_bpm/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2547
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2548
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2550
    :cond_0
    const/4 v1, 0x0

    .line 2551
    .local v1, "isForceUpdate":Z
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->checkVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2552
    const/4 v1, 0x1

    .line 2554
    :cond_1
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]prepareBPMConfigFiles() isForceUpdate ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2556
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2557
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2558
    const-string v2, "/system/bpm/black_gps.xml"

    const-string v3, "/data/data_bpm/black_gps.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2559
    const-string v2, "/system/bpm/black_brd.xml"

    const-string v3, "/data/data_bpm/black_brd.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2560
    const-string v2, "/system/bpm/black_alarm.xml"

    const-string v3, "/data/data_bpm/black_alarm.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2561
    const-string v2, "/system/bpm/version.xml"

    const-string v3, "/data/data_bpm/version.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2562
    const-string v2, "/system/bpm/force_stop_sensor.xml"

    const-string v3, "/data/data_bpm/force_stop_sensor.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "isForceUpdate":Z
    goto :goto_0

    .line 2563
    :catch_0
    move-exception v0

    .line 2564
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2569
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2570
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2571
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2572
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/black_gps.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2573
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/black_brd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2574
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/force_stop_sensor.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2578
    goto :goto_1

    .line 2575
    :catch_1
    move-exception v0

    .line 2576
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2579
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method prepareConfigStatus()V
    .locals 7

    .line 2085
    const-string/jumbo v0, "prepareConfigStatus()"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2086
    const-string v0, "/data/data_bpm/cfg.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2087
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/system/bpm/cfg.xml"

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2094
    .local v1, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2095
    .local v2, "sv":I
    const/4 v3, 0x0

    .line 2096
    .local v3, "dv":I
    if-nez v1, :cond_0

    .line 2097
    const/4 v2, 0x0

    .line 2098
    return-void

    .line 2100
    :cond_0
    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2101
    .local v4, "sysVersion":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2106
    :cond_1
    if-nez v0, :cond_2

    .line 2107
    const/4 v3, 0x0

    goto :goto_0

    .line 2109
    :cond_2
    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2110
    .local v5, "dataVersion":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2114
    .end local v5    # "dataVersion":Ljava/lang/String;
    :cond_3
    :goto_0
    sput v3, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 2115
    if-le v2, v3, :cond_6

    .line 2116
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 2117
    const-string v5, "forceSwitch"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2118
    .local v5, "forceSwitch":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 2119
    const-string/jumbo v6, "on"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2120
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    goto :goto_1

    .line 2121
    :cond_4
    const-string/jumbo v6, "off"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2122
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 2126
    :cond_5
    :goto_1
    const-string v6, "/data/data_bpm/cfg.xml"

    invoke-static {v6, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 2128
    .end local v5    # "forceSwitch":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method removeUidStateLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1623
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 1624
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1626
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1628
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public resumeAllProcessLock(Ljava/lang/String;)V
    .locals 5
    .param p1, "why"    # Ljava/lang/String;

    .line 3157
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3159
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    .line 3158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3161
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 3162
    return-void

    .line 3161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBPMEnable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 2881
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2882
    const/4 p1, 0x0

    .line 2885
    :cond_0
    if-eqz p1, :cond_1

    .line 2886
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2888
    :cond_1
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_2

    .line 2892
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2893
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2894
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateDozePolicyToDB(Z)V

    .line 2895
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2897
    :cond_2
    return-void
.end method

.method public setBPMEnableFromDB(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 2901
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2902
    const/4 p1, 0x0

    .line 2905
    :cond_0
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2906
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 2907
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    :cond_1
    if-eqz p1, :cond_2

    .line 2911
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2913
    :cond_2
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_3

    .line 2917
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2918
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2919
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2921
    :cond_3
    return-void
.end method

.method public setCGroupState(IZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .line 847
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 4

    .line 1398
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    .line 1399
    .local v0, "mWhiteUid":[I
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_0

    .line 1400
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getAppIdUserWhitelist()[I

    move-result-object v1

    move-object v0, v1

    .line 1402
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v2

    .line 1404
    .local v2, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v3

    .line 1405
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 1406
    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 1407
    .end local v2    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v1

    .line 1410
    .end local v0    # "mWhiteUid":[I
    goto :goto_0

    .line 1407
    .restart local v0    # "mWhiteUid":[I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1408
    .end local v0    # "mWhiteUid":[I
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 1411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method updateProperties()V
    .locals 0

    .line 2170
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .line 1526
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1527
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1531
    :cond_0
    return-void
.end method

.method writePidToTasksFileDelayed(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 839
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 840
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 841
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 842
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 843
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 844
    return-void
.end method
