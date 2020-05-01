.class public Lcom/android/server/policy/OemPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_ENABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final ENG_RESULT_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/ENG_RESULT"

.field private static final HAS_HW_KEYS:Z

.field static final IS_QUICK_PAY_ENABLED:Z

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xd

.field private static final KEY_ACTION_END:I = 0xc

.field private static final KEY_ACTION_EXPAND_NOTIFICATION:I = 0x9

.field private static final KEY_ACTION_HOME:I = 0xc

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_QUICK_PAY:I = 0xb

.field private static final KEY_ACTION_SPLIT_SCREEN:I = 0xa

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field public static final KEY_BLOCK:Ljava/lang/String; = "keyBlock"

.field private static final KEY_DISABLE_NODE:Ljava/lang/String; = "/proc/touchpanel/key_disable"

.field private static final KEY_DISABLE_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_disable"

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final KEY_SWITCH_NODE:Ljava/lang/String; = "/proc/touchpanel/key_switch"

.field private static final KEY_SWITCH_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_rep"

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field static final MSG_CONTROL_MISSTOUCH:I = 0x1

.field static final MSG_RECORD_POWER_KEY:I = 0x2

.field static final OP_QUICK_PAY_BUTTON_TIMEOUT:J = 0x1f40L

.field static final OP_QUICK_PAY_COMPONENT:Ljava/lang/String; = "OP_QUICK_PAY_DEFAULT"

.field private static QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String; = null

.field static final QUICK_PAY_CLASS_NAME:Ljava/lang/String; = "com.oneplus.quickpay.PayActivity"

.field static final QUICK_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.quickpay"

.field static final RECORD_POWER_KEY_DELAY:I = 0x1388

.field static final SOURCE_OEM:I = 0x10000000

.field public static final SPECIAL_PARAM:Ljava/lang/String; = "specialParam"

.field private static final TAG:Ljava/lang/String; = "OemPhoneWindowManager"

.field private static final TP_EDGE_LIMIT_PATH:Ljava/lang/String; = "/proc/touchpanel/tpedge_limit_enable"

.field private static final VOLUME_UP_DOUBLE_TAP_INTERVAL:J = 0x12cL

.field private static mBackKeyPressedTime:J

.field private static final mBlockingKeySet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static mFingerprintEnrolling:Z

.field protected static mForceHomeEnabled:Z

.field private static mKeyBlocked:Z

.field protected static mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field private static mLockTaskModeEnabled:Z

.field private static mLockforKeySet:Ljava/lang/Object;

.field private static mSpecialParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUnpingCombineKeyPressedTime:J

.field private static sEnableSoftwareKeys:Z


# instance fields
.field private INCALL_ACTIVITY:Ljava/lang/String;

.field private PKG_H2_LAUNCHER:Ljava/lang/String;

.field private final mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mAppSwitchKeyConsumed:Z

.field private mAppSwitchKeyDoubleTapPending:Z

.field private mAppSwitchKeyPressed:Z

.field private mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field final mBgHandler:Landroid/os/Handler;

.field private mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

.field private mDoubleTapOnAppSwitchBehavior:I

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mEnableThreePointersScreenShot:Z

.field mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

.field mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

.field mFloatingButton:Landroid/widget/ImageButton;

.field mFloatingButtonBG:Landroid/widget/ImageView;

.field private mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

.field protected mKeysBehavior:I

.field mLock:Ljava/lang/Object;

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

.field private mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mOemGestureRegistered:Z

.field mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field volatile mPowerKeyLongPressHandled:Z

.field mPowerOffReceiver:Landroid/content/BroadcastReceiver;

.field mQuickPayAlertDialog:Landroid/app/AlertDialog;

.field mQuickPayBtnLaunched:Z

.field mQuickPayBtnView:Landroid/view/View;

.field mQuickPayBtnX:I

.field mQuickPayBtnY:I

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mQuickPayDefault:I

.field mQuickPayEnabled:Z

.field mQuickPayFocusWin:Ljava/lang/String;

.field mQuickPayFocusWinPid:I

.field mQuickPayMaxWaitTime:J

.field mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

.field mShuttingDown:Z

.field private mThreePointerGestureRegisterd:Z

.field private mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

.field private mTraceVolumeUpKeyTime:J

.field private mUnpinRunnable:Ljava/lang/Runnable;

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 156
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 157
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 158
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 159
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 235
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 236
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 237
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 251
    const-string v0, "1"

    const-string/jumbo v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    .line 284
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    .line 321
    const-string v0, "QuickPay_APPS_Config"

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    .line 763
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockforKeySet:Ljava/lang/Object;

    .line 764
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 234
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 252
    const-string v2, "com.android.incallui.InCallActivity"

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 253
    const-string/jumbo v2, "net.oneplus.h2launcher"

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 276
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 277
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 299
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 300
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    .line 302
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 306
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 319
    new-instance v2, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 344
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    .line 357
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    .line 362
    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 489
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    .line 2185
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    .line 2199
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2208
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2217
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$9;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3287
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$12;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->disableQuickPayButton()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemPhoneWindowManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getProductLineTestFlag()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/OemPhoneWindowManager;IB)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # B

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->setProductLineTestFlagExtraByte(IB)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 154
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 154
    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bArray"    # [B

    .line 747
    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 750
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 752
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 753
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "sTemp":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    .end local v1    # "i":I
    .end local v2    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 748
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private collapsePanels()V
    .locals 4

    .line 2383
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2384
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ collapsePanels() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    .line 2388
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2392
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2395
    goto :goto_0

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collapse notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private collectAssistantEvent(II)V
    .locals 1
    .param p1, "behavior"    # I
    .param p2, "method"    # I

    .line 1478
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-virtual {v0, p2}, Lnet/oneplus/odm/insight/AssistantEventCollector;->collectOpenAssistantEvent(I)V

    .line 1484
    :cond_0
    return-void
.end method

.method private disableQuickPayButton()V
    .locals 2

    .line 3035
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 3036
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3037
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3038
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3040
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 3042
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3043
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3045
    :cond_3
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "QuickPay: Ball disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    return-void
.end method

.method private enableQuickPayButton()V
    .locals 8

    .line 2861
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2862
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    .line 2863
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2864
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2865
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x5090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 2867
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    const v2, 0x5070058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    .line 2869
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    const v2, 0x5070059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    .line 2872
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2873
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x128

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2877
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2879
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "QuickPayBall"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2880
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2881
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030004

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2882
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2883
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2885
    .local v1, "margin":I
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5060086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2887
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2888
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2890
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2894
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v4, v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2895
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v4, v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 2891
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2892
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2898
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$10;

    invoke-direct {v4, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$10;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3030
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3031
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "QuickPay: Ball enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "margin":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method

.method private expandNotificationsPanel()V
    .locals 4

    .line 2367
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2368
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ expandNotificationPanel() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    .line 2372
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2376
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    goto :goto_0

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to expand notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2841
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2842
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    return-object v0

    .line 2843
    :catch_0
    move-exception v0

    .line 2844
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: getApplicationIcon failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2846
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAvailablePayApps()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation

    .line 2817
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 2819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2820
    .local v0, "dialoglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2821
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2822
    .local v3, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2823
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    .line 2826
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 2827
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2828
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 2829
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2831
    .local v5, "iconSize":I
    invoke-virtual {v4, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2832
    iput-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2820
    .end local v3    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconSize":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2837
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2559
    const-string v0, "com.android.systemui"

    .line 2560
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2561
    .local v1, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2562
    .local v2, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x2

    .line 2563
    .local v3, "flags":I
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 2566
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x1

    .line 2567
    .local v5, "startIdx":I
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2568
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2569
    const/4 v5, 0x0

    .line 2571
    :cond_0
    move v6, v5

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2572
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2573
    .local v7, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    .line 2574
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2576
    :cond_1
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2577
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.android.systemui"

    .line 2578
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2579
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v9

    .line 2571
    .end local v7    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2583
    .end local v6    # "i":I
    :cond_3
    const/4 v6, 0x0

    return-object v6
.end method

.method private getProductLineTestFlag()[B
    .locals 6

    .line 604
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 605
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 607
    .local v1, "result_file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 612
    :catch_0
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v1, 0x0

    .line 615
    const/4 v0, 0x0

    .line 615
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 608
    :catch_1
    move-exception v2

    .line 609
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag FileNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v1, 0x0

    .line 611
    const/4 v0, 0x0

    .line 616
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 618
    :goto_1
    if-eqz v1, :cond_0

    .line 620
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 627
    :catch_2
    move-exception v2

    .line 628
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 625
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 621
    :catch_3
    move-exception v2

    .line 622
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    const/4 v0, 0x0

    .line 626
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 629
    :goto_2
    goto :goto_6

    .line 627
    :catch_4
    move-exception v2

    .line 628
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 625
    :goto_4
    nop

    .line 626
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 629
    goto :goto_5

    .line 627
    :catch_5
    move-exception v3

    .line 628
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OemPhoneWindowManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    throw v2

    .line 632
    :cond_0
    :goto_6
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProductLineTestFlag result[] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 3048
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 3049
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 3050
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 3052
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private hasInComingCall()Z
    .locals 4

    .line 2643
    const/4 v0, 0x0

    .line 2645
    .local v0, "inCallFocused":Z
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 2646
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2647
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2648
    const/4 v0, 0x1

    .line 2652
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v0
.end method

.method private ignoreKeyCustomization()Z
    .locals 3

    .line 2244
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2245
    return v1

    .line 2249
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2850
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2851
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2852
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 2853
    const/4 v0, 0x1

    return v0

    .line 2856
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 2855
    :catch_0
    move-exception v1

    .line 2857
    :goto_0
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    return v0
.end method

.method private isRecentKeyVisible()Z
    .locals 3

    .line 2656
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "swipe_up_to_switch_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 2658
    .local v0, "recentVisible":Z
    return v0
.end method

.method private launchCameraAction()V
    .locals 2

    .line 2515
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 2516
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2518
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 2519
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .line 2603
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2604
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2604
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2606
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2608
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2609
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2610
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2611
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 8
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 2254
    .local v0, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    .line 2257
    .local v1, "userSetupComplete":Z
    const/4 v2, 0x4

    const/16 v3, 0xd

    if-nez v1, :cond_1

    .line 2258
    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 2260
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2261
    nop

    .line 2265
    :goto_0
    return-void

    .line 2270
    :cond_1
    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/scene/OimcBrickModeObserver;->isOn()Z

    move-result v4

    const/16 v5, 0xc

    if-eqz v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v5, :cond_2

    .line 2272
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring key customization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by Zen Mode!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return-void

    .line 2279
    :cond_2
    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    .line 2281
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 2282
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2283
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2284
    const-string v2, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring key customization: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; there\'s a ringing incoming call."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    return-void

    .line 2291
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 2293
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2294
    goto/16 :goto_3

    .line 2296
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    .line 2297
    goto/16 :goto_3

    .line 2345
    :pswitch_2
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_7

    .line 2346
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2347
    .local v2, "keyCode":I
    const-string v3, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: KEY_ACTION_QUICK_PAY code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const/16 v3, 0x84

    if-eq v2, v3, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2349
    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2350
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "QuickPay: Keyguard is showing, skip to start QuickPay."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    return-void

    .line 2353
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2355
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2357
    const/4 v7, 0x0

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v7

    .line 2355
    :goto_1
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2357
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2358
    .end local v2    # "keyCode":I
    goto :goto_3

    .line 2338
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleSplitScreen()V

    .line 2339
    goto :goto_3

    .line 2324
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    .line 2325
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2326
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StatusBar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2329
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->collapsePanels()V

    goto :goto_2

    .line 2333
    :cond_6
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V

    .line 2335
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    goto :goto_3

    .line 2321
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    .line 2322
    goto :goto_3

    .line 2318
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    .line 2319
    goto :goto_3

    .line 2315
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchVoiceAssistAction()V

    .line 2316
    goto :goto_3

    .line 2311
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    .line 2312
    goto :goto_3

    .line 2308
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    .line 2309
    goto :goto_3

    .line 2305
    :pswitch_a
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2306
    goto :goto_3

    .line 2302
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    .line 2303
    goto :goto_3

    .line 2299
    :pswitch_c
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2300
    goto :goto_3

    .line 2341
    :pswitch_d
    nop

    .line 2364
    :cond_7
    :goto_3
    return-void

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

.method private putDeviceToSleep()V
    .locals 3

    .line 2595
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2596
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2599
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 12

    .line 2410
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2413
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2415
    .local v1, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v2, "key_home_long_press_action"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2418
    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v2, v4, :cond_1

    .line 2420
    :cond_0
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2424
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e003c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2426
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v5, "key_home_double_tap_action"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2429
    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v5, v4, :cond_3

    .line 2431
    :cond_2
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2435
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2437
    .local v5, "defaultLongPressOnMenuBehavior":I
    const-string/jumbo v6, "key_menu_long_press_action"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2440
    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v6, v4, :cond_5

    .line 2442
    :cond_4
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2446
    :cond_5
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 2448
    .local v6, "defaultDoubleTapOnMenuBehavior":I
    const-string/jumbo v7, "key_menu_double_tap_action"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 2451
    iget v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v7, :cond_6

    iget v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v7, v4, :cond_7

    .line 2453
    :cond_6
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 2457
    :cond_7
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x5080008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2459
    .local v7, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v8, "key_back_long_press_action"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2462
    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v8, :cond_8

    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v8, v4, :cond_9

    .line 2464
    :cond_8
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2468
    :cond_9
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5080004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2470
    .local v8, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v9, "key_back_double_tap_action"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 2473
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_a

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v4, :cond_b

    .line 2475
    :cond_a
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 2479
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5080007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2481
    .local v9, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v10, "key_app_switch_long_press_action"

    invoke-static {v0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2484
    iget v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v10, :cond_c

    iget v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v10, v4, :cond_d

    .line 2486
    :cond_c
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2490
    :cond_d
    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x5080003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2492
    .local v10, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v11, "key_app_switch_double_tap_action"

    invoke-static {v0, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 2495
    iget v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v11, :cond_e

    iget v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v11, v4, :cond_f

    .line 2497
    :cond_e
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 2499
    :cond_f
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 2588
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2589
    .local v0, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2590
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2591
    .local v2, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 3099
    if-nez p1, :cond_0

    .line 3100
    return-void

    .line 3103
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3103
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 3104
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3105
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3106
    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 3107
    :cond_1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3108
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 3109
    :cond_2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3110
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 3111
    :cond_3
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3112
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 3113
    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_paytm_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3114
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    .line 3103
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3117
    .end local v1    # "index":I
    :cond_6
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3120
    :catch_0
    move-exception v0

    .line 3121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 3118
    :catch_1
    move-exception v0

    .line 3119
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 3123
    :goto_3
    return-void
.end method

.method public static setKeyLocks(Ljava/lang/Object;)V
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;

    .line 769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_0

    .line 770
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyLocks caller is not system uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 775
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockforKeySet:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    if-eqz p0, :cond_7

    :try_start_1
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 777
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 778
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 779
    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    .line 781
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 781
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_6

    .line 782
    aget-object v4, v1, v3

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "param_e":[Ljava/lang/String;
    const-string/jumbo v5, "keyBlock"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 784
    array-length v5, v4

    const/4 v8, 0x3

    if-ge v5, v8, :cond_1

    .line 785
    monitor-exit v0

    return-void

    .line 788
    :cond_1
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 789
    .local v5, "keyCode":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v8, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v9, v6

    .line 790
    .local v9, "j":I
    :goto_1
    array-length v10, v4

    if-ge v9, v10, :cond_2

    .line 791
    aget-object v10, v4, v9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 793
    .end local v9    # "j":I
    :cond_2
    sget-object v9, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    .end local v5    # "keyCode":I
    .end local v8    # "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v5, "specialParam"

    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 797
    array-length v5, v4

    if-ge v5, v6, :cond_4

    .line 798
    monitor-exit v0

    return-void

    .line 801
    :cond_4
    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v4    # "param_e":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 804
    .end local v1    # "tmp":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    goto :goto_2

    .line 808
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 804
    :cond_7
    if-nez p0, :cond_8

    .line 805
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 806
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 808
    :cond_8
    :goto_2
    monitor-exit v0

    .line 811
    goto :goto_4

    .line 808
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private setProductLineTestFlag([B)Z
    .locals 8
    .param p1, "data"    # [B

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 639
    .local v1, "needChmod":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .local v2, "ENG_RESULT_FILE":Ljava/io/File;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProductLineTestFlag data[] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-eqz p1, :cond_4

    array-length v3, p1

    const/16 v4, 0x80

    if-eq v3, v4, :cond_0

    goto/16 :goto_7

    .line 645
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 646
    const/4 v1, 0x1

    .line 648
    :cond_1
    const/4 v3, 0x0

    .line 650
    .local v3, "result_file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v6, "rws"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 655
    :catch_0
    move-exception v4

    .line 656
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v3, 0x0

    .line 658
    const/4 v0, 0x0

    .line 658
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 651
    :catch_1
    move-exception v4

    .line 652
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v3, 0x0

    .line 654
    const/4 v0, 0x0

    .line 659
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 661
    :goto_1
    if-eqz v3, :cond_2

    .line 663
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    const/4 v0, 0x1

    .line 670
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 674
    :goto_2
    goto :goto_6

    .line 671
    :catch_2
    move-exception v4

    .line 672
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string/jumbo v7, "setProductLineTestFlag IOException while close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 675
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 669
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 665
    :catch_3
    move-exception v4

    .line 666
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 667
    const/4 v0, 0x0

    .line 670
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 671
    :catch_4
    move-exception v4

    .line 672
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 669
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 670
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 674
    goto :goto_5

    .line 671
    :catch_5
    move-exception v5

    .line 672
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IOException while close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OemPhoneWindowManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 674
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    throw v4

    .line 678
    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 679
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 680
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setReadable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_3
    return v0

    .line 642
    .end local v3    # "result_file":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_7
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "data is invalid!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return v0
.end method

.method private setProductLineTestFlagExtraByte(IB)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "ret":Z
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProductLineTestFlag index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, "ENG_RESULT_FILE":Ljava/io/File;
    if-ltz p1, :cond_4

    const/16 v2, 0x80

    if-lt p1, v2, :cond_0

    goto/16 :goto_9

    .line 695
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 697
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v3, "filedir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 699
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 700
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v3    # "filedir":Ljava/io/File;
    goto :goto_0

    .line 703
    :catch_0
    move-exception v3

    .line 704
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 704
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 701
    :catch_1
    move-exception v3

    .line 702
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 705
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 706
    :goto_1
    new-array v2, v2, [B

    .line 707
    .local v2, "data":[B
    aput-byte p2, v2, p1

    .line 708
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->setProductLineTestFlag([B)Z

    move-result v3

    return v3

    .line 710
    .end local v2    # "data":[B
    :cond_2
    const/4 v2, 0x0

    .line 712
    .local v2, "result_file":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    goto :goto_2

    .line 717
    :catch_2
    move-exception v3

    .line 718
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x0

    .line 720
    const/4 v0, 0x0

    .line 720
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_3

    .line 713
    :catch_3
    move-exception v3

    .line 714
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte FileNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x0

    .line 716
    const/4 v0, 0x0

    .line 721
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 723
    :goto_3
    if-eqz v2, :cond_3

    .line 725
    int-to-long v3, p1

    :try_start_2
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 726
    invoke-virtual {v2, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    const/4 v0, 0x1

    .line 733
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 739
    :goto_4
    goto :goto_8

    .line 734
    :catch_4
    move-exception v3

    .line 735
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 740
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 732
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 728
    :catch_5
    move-exception v3

    .line 729
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 730
    const/4 v0, 0x0

    .line 733
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 734
    :catch_6
    move-exception v3

    .line 735
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 732
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    nop

    .line 733
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 739
    goto :goto_7

    .line 734
    :catch_7
    move-exception v4

    .line 735
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    const-string v6, "OemPhoneWindowManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 739
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7
    throw v3

    .line 743
    :cond_3
    :goto_8
    return v0

    .line 692
    .end local v2    # "result_file":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_9
    const-string v2, "OemPhoneWindowManager"

    const-string/jumbo v3, "index is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v0
.end method

.method private startQuickPay(IZZ)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .line 2754
    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2755
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return-void

    .line 2757
    :cond_1
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    if-eqz v0, :cond_2

    return-void

    .line 2758
    :cond_2
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 2759
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: startQuickPay which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fromButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 2761
    .local v0, "pkgOK":Z
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2762
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2763
    if-eq p1, v2, :cond_3

    .line 2764
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2765
    .local v3, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-boolean v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2766
    move p1, v2

    .line 2767
    const/4 v0, 0x1

    .line 2768
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: startQuickPay new which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    goto :goto_1

    .line 2762
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2774
    .end local v2    # "i":I
    :cond_4
    :goto_1
    if-eqz v0, :cond_9

    .line 2775
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 2777
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 2779
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2781
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    .line 2783
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2784
    .local v2, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    if-eqz p2, :cond_5

    .line 2786
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->addAppLockerPassedPackage(Ljava/lang/String;)V

    .line 2787
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 2789
    :cond_5
    const/4 v1, 0x0

    .line 2790
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    const v4, 0x10008000

    if-eqz v3, :cond_6

    .line 2791
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v3

    .line 2792
    const-string v3, "com.oneplus.quickpay"

    const-string v5, "com.oneplus.quickpay.PayActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2793
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2794
    const-string v3, "OP_QUICK_PAY_DEFAULT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2795
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 2796
    :cond_6
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 2797
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v3

    .line 2798
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2799
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2800
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 2801
    :cond_7
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 2802
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 2804
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2805
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2807
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_8
    :goto_2
    goto :goto_3

    .line 2808
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, 0x50c0078

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2809
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2810
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "QuickPay: startQuickPay have no installed app."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2814
    .end local v0    # "pkgOK":Z
    :goto_3
    goto :goto_4

    .line 2812
    :catch_0
    move-exception v0

    .line 2813
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: startQuickPay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2523
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2524
    :catch_0
    move-exception v0

    .line 2525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 2533
    .local v0, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2534
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2537
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 2538
    const/4 v3, 0x0

    return v3

    .line 2543
    :cond_0
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_1

    .line 2544
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v2, v3, v5}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 2545
    return v4

    .line 2548
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2549
    const-string v3, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switching to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_2
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v6, 0x2

    invoke-interface {v2, v3, v6, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 2554
    return v4
.end method

.method private toggleSplitScreen()V
    .locals 3

    .line 2400
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2402
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 2403
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    goto :goto_0

    .line 2405
    :cond_0
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Failed to get StatusBarManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :goto_0
    return-void
.end method

.method private triggerVirtualKeypress(I)V
    .locals 17
    .param p1, "keyCode"    # I

    .line 2502
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2503
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2505
    .local v14, "now":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const v13, 0x10000101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2508
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 2510
    .local v2, "upEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2511
    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2512
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1782
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1789
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1794
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_1

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandScreenDecor()V

    .line 1799
    :cond_1
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1763
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 1768
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton;->navigationBarPosition(III)V

    .line 1774
    :cond_0
    return-void
.end method

.method public clearQuickPaySwitch(Z)V
    .locals 2
    .param p1, "clearWhich"    # Z

    .line 3056
    if-eqz p1, :cond_0

    .line 3057
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 3059
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 3060
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 3061
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 3063
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 3065
    return-void
.end method

.method expandScreenDecor()V
    .locals 7

    .line 3239
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_5

    .line 3242
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3243
    .local v0, "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3246
    :cond_0
    if-eqz v0, :cond_5

    .line 3248
    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3250
    .local v1, "isGestureNeedRecoverAnim":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    if-nez v4, :cond_3

    if-nez v1, :cond_2

    .line 3251
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3252
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    .line 3253
    .local v2, "isExpand":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-boolean v4, v4, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-eq v4, v2, :cond_5

    .line 3254
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    .line 3255
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expandScreenDecor to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ignore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " topDocked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " topFull="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isGestureNeedRecoverAnim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLimited="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLetterboxed="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedAppWindow()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3255
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/ScreenDecor;->expandScreenDecor(Z)V

    .line 3267
    .end local v0    # "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .end local v1    # "isGestureNeedRecoverAnim":Z
    .end local v2    # "isExpand":Z
    :cond_5
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 7
    .param p1, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1885
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OemQuickReply;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1892
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    .line 1893
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1894
    .local v0, "winTitle":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1895
    .local v1, "isPayApp":Z
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1896
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-eq v3, v4, :cond_1

    .line 1897
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d8

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1898
    .local v3, "isFocusChanged":Z
    :goto_1
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: focusChangedLw mQuickPayFocusWin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayWhich="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " lastFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isFocusChanged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayFocusWinPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    if-eqz v1, :cond_6

    .line 1903
    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-nez v4, :cond_2

    .line 1904
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    goto :goto_2

    .line 1906
    :cond_2
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v4

    .line 1907
    .local v4, "pid":I
    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-eq v5, v4, :cond_3

    .line 1908
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1910
    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1912
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1913
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 1912
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1914
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 1915
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1916
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v6, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v6, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1928
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pid":I
    :cond_3
    :goto_2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1929
    .local v2, "newFocusWin":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    if-eq v4, v2, :cond_5

    .line 1930
    :cond_4
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1931
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1933
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1935
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1937
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    .line 1935
    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1937
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1939
    .end local v2    # "newFocusWin":Ljava/lang/String;
    :cond_5
    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_7

    .line 1940
    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1949
    .end local v0    # "winTitle":Ljava/lang/String;
    .end local v1    # "isPayApp":Z
    .end local v3    # "isFocusChanged":Z
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_8

    .line 1950
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1954
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    return v0
.end method

.method protected getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2012
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2013
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 2014
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string v2, ""

    return-object v2

    .line 2017
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2018
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 2019
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const-string v3, ""

    return-object v3

    .line 2022
    :cond_1
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    return-object v3
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 368
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 369
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 373
    invoke-static {p1}, Lnet/oneplus/odm/insight/AssistantEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/AssistantEventCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 377
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    new-instance v2, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 379
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v1, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    .end local v1    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v1, "engineermodeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v2, "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v2, :cond_1

    .line 398
    new-instance v2, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    .line 411
    new-array v2, v0, [I

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "ThreePointersThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 414
    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 415
    new-instance v4, Lcom/android/server/policy/OemThreePointersGesturesListener;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 417
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 418
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    .line 426
    .end local v2    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_9

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5020022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 431
    move v4, v3

    .line 431
    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 432
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 433
    .local v5, "config":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_7

    .line 435
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v7, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 436
    .local v7, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iput v4, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    .line 437
    aget-object v8, v6, v3

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 438
    aget-object v8, v6, v0

    const-string/jumbo v9, "sdk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 439
    iput-boolean v0, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 440
    :cond_3
    aget-object v8, v6, v0

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 441
    aget-object v8, v6, v0

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 443
    :cond_4
    aget-object v8, v6, v0

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 446
    :goto_1
    const-string v8, "default"

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 447
    iput-boolean v0, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 449
    :cond_5
    const-string v8, "class"

    const/4 v9, 0x3

    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 450
    aget-object v8, v6, v9

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 452
    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .end local v5    # "config":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 456
    .end local v4    # "i":I
    :cond_8
    new-instance v4, Lcom/oneplus/config/ConfigObserver;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;

    invoke-direct {v7, p0}, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 458
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v4}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 459
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 467
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v2, :cond_a

    .line 468
    new-instance v2, Lcom/android/server/policy/OemGestureButton;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/OemGestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    .line 469
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v2, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 470
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    .line 478
    :cond_a
    new-array v0, v0, [I

    const/16 v2, 0x49

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_b
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 37
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 1100
    .local v2, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1101
    .local v3, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 1102
    .local v4, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v5

    .line 1103
    .local v5, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1104
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 1105
    .local v9, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    .line 1106
    .local v10, "canceled":Z
    and-int/lit16 v11, v2, 0x80

    if-eqz v11, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 1107
    .local v11, "longPress":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 1108
    .local v12, "isFromNavbar":Z
    :goto_3
    const/high16 v13, 0x20000000

    and-int v13, p3, v13

    if-eqz v13, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 1109
    .local v13, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    const/4 v8, -0x1

    if-ne v15, v8, :cond_5

    move v8, v7

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 1110
    .local v8, "virtualKey":Z
    :goto_5
    const/4 v15, 0x4

    if-ne v3, v15, :cond_6

    move/from16 v16, v7

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    .line 1111
    .local v16, "backKeyCode":Z
    :goto_6
    const/4 v15, 0x3

    if-ne v3, v15, :cond_7

    move/from16 v17, v7

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    .line 1112
    .local v17, "homeKeyCode":Z
    :goto_7
    const/16 v15, 0xbb

    if-ne v3, v15, :cond_8

    move v15, v7

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    .line 1113
    .local v15, "switchKeyCode":Z
    :goto_8
    const/16 v7, 0x1a

    if-ne v3, v7, :cond_9

    const/4 v7, 0x1

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    .line 1114
    .local v7, "powerKeyCode":Z
    :goto_9
    move/from16 v20, v2

    .line 1114
    .end local v2    # "flags":I
    .local v20, "flags":I
    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    goto :goto_a

    :cond_a
    const/16 v21, 0x0

    :goto_a
    move-object/from16 v22, v21

    .line 1115
    .local v22, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v2, v22

    if-eqz v2, :cond_b

    .line 1115
    .end local v22    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v14, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_b

    :cond_b
    const/4 v14, 0x0

    .line 1116
    .local v14, "type":I
    :goto_b
    move/from16 v23, v12

    const/16 v12, 0x18

    .line 1116
    .end local v12    # "isFromNavbar":Z
    .local v23, "isFromNavbar":Z
    if-ne v3, v12, :cond_c

    const/4 v12, 0x1

    goto :goto_c

    :cond_c
    const/4 v12, 0x0

    .line 1118
    .local v12, "volumeUpKey":Z
    :goto_c
    sget-boolean v21, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v21, :cond_d

    .line 1119
    move/from16 v24, v3

    const-string v3, "OemPhoneWindowManager"

    .line 1119
    .end local v3    # "keyCode":I
    .local v24, "keyCode":I
    move/from16 v25, v12

    new-instance v12, Ljava/lang/StringBuilder;

    .line 1119
    .end local v12    # "volumeUpKey":Z
    .local v25, "volumeUpKey":Z
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v8

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching "

    .line 1119
    .end local v8    # "virtualKey":Z
    .local v26, "virtualKey":Z
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", interactive = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1124
    .end local v24    # "keyCode":I
    .end local v25    # "volumeUpKey":Z
    .end local v26    # "virtualKey":Z
    .restart local v3    # "keyCode":I
    .restart local v8    # "virtualKey":Z
    .restart local v12    # "volumeUpKey":Z
    :cond_d
    move/from16 v24, v3

    move/from16 v26, v8

    move/from16 v25, v12

    .line 1124
    .end local v3    # "keyCode":I
    .end local v8    # "virtualKey":Z
    .end local v12    # "volumeUpKey":Z
    .restart local v24    # "keyCode":I
    .restart local v25    # "volumeUpKey":Z
    .restart local v26    # "virtualKey":Z
    :goto_d
    const/4 v3, 0x1

    new-array v8, v3, [I

    const/16 v3, 0xb

    const/4 v12, 0x0

    aput v3, v8, v12

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const-wide/16 v21, 0x0

    if-eqz v3, :cond_11

    .line 1125
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v8}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const/4 v8, 0x3

    if-eq v3, v8, :cond_e

    goto :goto_e

    .line 1132
    :cond_e
    if-nez v17, :cond_f

    if-nez v16, :cond_f

    if-nez v15, :cond_f

    if-eqz v7, :cond_11

    .line 1133
    :cond_f
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_10

    .line 1134
    const-string v3, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_10
    return-wide v21

    .line 1145
    :cond_11
    :goto_e
    const-wide/16 v27, -0x1

    if-eqz v15, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1146
    return-wide v27

    .line 1150
    :cond_12
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    move/from16 v29, v7

    .line 1150
    .end local v7    # "powerKeyCode":Z
    .local v29, "powerKeyCode":Z
    if-eqz v3, :cond_1e

    .line 1151
    if-eqz v6, :cond_1a

    .line 1153
    if-lez v4, :cond_13

    .line 1154
    return-wide v27

    .line 1157
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v30

    .line 1159
    .local v30, "time":J
    if-eqz v16, :cond_14

    if-nez v4, :cond_14

    .line 1160
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressedTime:J

    .line 1161
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1164
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1165
    if-eqz v15, :cond_16

    if-nez v4, :cond_16

    .line 1166
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    .line 1167
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_f

    .line 1170
    :cond_15
    const/4 v3, 0x1

    if-eqz v17, :cond_16

    if-nez v4, :cond_16

    .line 1171
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    .line 1172
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1176
    :cond_16
    :goto_f
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    if-eqz v3, :cond_19

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-eqz v3, :cond_17

    goto :goto_10

    .line 1182
    .end local v30    # "time":J
    :cond_17
    move/from16 v36, v13

    goto :goto_11

    .line 1177
    .restart local v30    # "time":J
    :cond_18
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    if-eqz v3, :cond_19

    :goto_10
    sget-wide v32, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressedTime:J

    sget-wide v34, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    sub-long v7, v32, v34

    .line 1178
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v32, 0xc8

    cmp-long v3, v7, v32

    if-gez v3, :cond_19

    .line 1179
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    move/from16 v36, v13

    int-to-long v12, v8

    .line 1179
    .end local v13    # "interactive":Z
    .local v36, "interactive":Z
    invoke-virtual {v3, v7, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1180
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    .line 1180
    .end local v30    # "time":J
    goto :goto_11

    .line 1182
    .end local v36    # "interactive":Z
    .restart local v13    # "interactive":Z
    :cond_19
    move/from16 v36, v13

    .line 1196
    .end local v13    # "interactive":Z
    .restart local v36    # "interactive":Z
    :goto_11
    const/4 v3, 0x0

    goto :goto_13

    .line 1183
    .end local v36    # "interactive":Z
    .restart local v13    # "interactive":Z
    :cond_1a
    move/from16 v36, v13

    .line 1183
    .end local v13    # "interactive":Z
    .restart local v36    # "interactive":Z
    if-eqz v16, :cond_1b

    .line 1184
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_12

    .line 1185
    :cond_1b
    const/4 v3, 0x0

    if-eqz v15, :cond_1c

    .line 1186
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_12

    .line 1187
    :cond_1c
    if-eqz v17, :cond_1d

    .line 1188
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1191
    :cond_1d
    :goto_12
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1192
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    goto :goto_13

    .line 1196
    .end local v36    # "interactive":Z
    .restart local v13    # "interactive":Z
    :cond_1e
    move/from16 v36, v13

    const/4 v3, 0x0

    .line 1196
    .end local v13    # "interactive":Z
    .restart local v36    # "interactive":Z
    :goto_13
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    if-eqz v7, :cond_23

    .line 1197
    if-eqz v9, :cond_21

    .line 1198
    if-eqz v16, :cond_1f

    .line 1199
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_14

    .line 1200
    :cond_1f
    if-eqz v15, :cond_20

    .line 1201
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1204
    :cond_20
    :goto_14
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    if-nez v7, :cond_21

    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-nez v7, :cond_21

    .line 1205
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    .line 1208
    :cond_21
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_22

    .line 1209
    const-string v3, "OemPhoneWindowManager"

    const-string/jumbo v7, "key event is canceled because it is blocked because of screen pin. "

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_22
    return-wide v27

    .line 1214
    :cond_23
    const/16 v3, 0x7d9

    if-eqz v17, :cond_34

    .line 1215
    if-eqz v6, :cond_2d

    .line 1216
    if-eqz v2, :cond_29

    .line 1217
    if-eq v14, v3, :cond_27

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_24

    goto :goto_16

    .line 1225
    :cond_24
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v3, v3

    .line 1226
    .local v3, "typeCount":I
    const/4 v7, 0x0

    .line 1226
    .local v7, "i":I
    :goto_15
    if-ge v7, v3, :cond_29

    .line 1227
    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v8, v8, v7

    if-ne v14, v8, :cond_26

    .line 1229
    sget-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v8, :cond_25

    .line 1230
    const-string v8, "OemPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_25
    return-wide v27

    .line 1226
    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 1220
    .end local v3    # "typeCount":I
    .end local v7    # "i":I
    :cond_27
    :goto_16
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_28

    .line 1221
    const-string v3, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_28
    return-wide v21

    .line 1237
    :cond_29
    if-nez v4, :cond_2a

    .line 1238
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1239
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1240
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    if-eqz v7, :cond_2c

    .line 1241
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1242
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1243
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1244
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1247
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_17

    .line 1250
    :cond_2a
    if-eqz v11, :cond_2c

    .line 1251
    if-nez v5, :cond_2c

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    if-nez v3, :cond_2c

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v3, :cond_2c

    .line 1253
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v3, :cond_2c

    .line 1254
    :cond_2b
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1255
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1256
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1257
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1260
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v7, 0x3

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    .line 1304
    :cond_2c
    :goto_17
    return-wide v27

    .line 1265
    :cond_2d
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1266
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    if-eqz v7, :cond_2e

    .line 1267
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1268
    return-wide v27

    .line 1271
    :cond_2e
    if-eqz v10, :cond_30

    .line 1272
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2f

    .line 1273
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Ignoring HOME; event canceled."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_2f
    return-wide v27

    .line 1282
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1283
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1284
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1285
    const-string v7, "OemPhoneWindowManager"

    const-string v8, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-wide v27

    .line 1292
    :cond_31
    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v7, :cond_33

    .line 1293
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v7

    if-eqz v7, :cond_32

    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v7, :cond_33

    .line 1294
    :cond_32
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1295
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1296
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1298
    return-wide v27

    .line 1301
    :cond_33
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1302
    return-wide v27

    .line 1305
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_34
    if-eqz v16, :cond_40

    .line 1306
    if-eqz v26, :cond_36

    if-nez v23, :cond_36

    .line 1307
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v3, :cond_35

    .line 1308
    return-wide v27

    .line 1311
    :cond_35
    return-wide v21

    .line 1316
    :cond_36
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-nez v3, :cond_37

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-nez v3, :cond_37

    .line 1318
    return-wide v21

    .line 1321
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1322
    return-wide v21

    .line 1325
    :cond_38
    if-eqz v6, :cond_3b

    .line 1326
    if-nez v4, :cond_39

    .line 1327
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1328
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    if-eqz v7, :cond_3a

    .line 1329
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1330
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1331
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1332
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1335
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    const/4 v7, 0x5

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_18

    .line 1338
    :cond_39
    if-eqz v11, :cond_3a

    .line 1339
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-nez v3, :cond_3a

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v3, :cond_3a

    .line 1340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 1341
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1342
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1343
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1344
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1347
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    const/4 v7, 0x6

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    .line 1377
    :cond_3a
    :goto_18
    return-wide v27

    .line 1352
    :cond_3b
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1353
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v7, :cond_3c

    .line 1354
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1355
    return-wide v27

    .line 1358
    :cond_3c
    if-eqz v10, :cond_3e

    .line 1359
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_3d

    .line 1360
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Ignoring BACK; event canceled."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_3d
    return-wide v27

    .line 1366
    :cond_3e
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-eqz v3, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1367
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1368
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1369
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {v3, v7, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1371
    return-wide v27

    .line 1374
    :cond_3f
    const/16 v3, 0xd

    const/4 v7, 0x0

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1375
    return-wide v27

    .line 1378
    :cond_40
    if-eqz v15, :cond_4c

    .line 1379
    if-eqz v2, :cond_43

    .line 1380
    if-eq v14, v3, :cond_41

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_43

    .line 1383
    :cond_41
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_42

    .line 1384
    const-string v3, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_42
    return-wide v27

    .line 1391
    :cond_43
    if-eqz v6, :cond_46

    .line 1392
    if-nez v4, :cond_44

    .line 1393
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1394
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1395
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    if-eqz v7, :cond_45

    .line 1396
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1397
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1398
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1399
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1402
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    const/4 v7, 0x7

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_19

    .line 1405
    :cond_44
    if-eqz v11, :cond_45

    .line 1406
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-nez v3, :cond_45

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-eqz v3, :cond_45

    .line 1407
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1408
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1409
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1410
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1411
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1414
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    const/16 v7, 0x8

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    .line 1453
    :cond_45
    :goto_19
    return-wide v27

    .line 1419
    :cond_46
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1420
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v7, :cond_47

    .line 1421
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1422
    return-wide v27

    .line 1425
    :cond_47
    if-eqz v10, :cond_49

    .line 1426
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_48

    .line 1427
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Ignoring APP_SWITCH; event canceled."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_48
    return-wide v27

    .line 1433
    :cond_49
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-eqz v3, :cond_4a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1434
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1435
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1436
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {v3, v7, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1438
    return-wide v27

    .line 1443
    :cond_4a
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDisplayRotation:I

    invoke-virtual {v0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1444
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1445
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1446
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Drop APP_SWITCH key due to animation is on-going"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1448
    :cond_4b
    const/4 v3, 0x2

    const/4 v7, 0x0

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1451
    :goto_1a
    return-wide v27

    .line 1454
    :cond_4c
    if-eqz v25, :cond_4e

    .line 1457
    if-eqz v9, :cond_4e

    .line 1458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1459
    .local v7, "now":J
    iget-wide v12, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mTraceVolumeUpKeyTime:J

    const-wide/16 v18, 0x12c

    add-long v12, v12, v18

    cmp-long v3, v7, v12

    if-gez v3, :cond_4d

    .line 1460
    const-string v3, "OemPhoneWindowManager"

    const-string/jumbo v12, "volume key trigger trace"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1462
    .local v3, "intent":Landroid/content/Intent;
    const-string v12, "com.android.traceur.HOTKEY"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const/high16 v12, 0x10000000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1464
    const-string v12, "com.android.traceur"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1467
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4d
    iput-wide v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mTraceVolumeUpKeyTime:J

    .line 1474
    .end local v7    # "now":J
    :cond_4e
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v7

    return-wide v7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 20
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    .line 818
    .local v3, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 819
    .local v4, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    .line 820
    .local v5, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 821
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 822
    .local v9, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 823
    .local v10, "isFromNavbar":Z
    :goto_2
    const/high16 v11, 0x20000000

    and-int v11, p2, v11

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 824
    .local v11, "interactive":Z
    :goto_3
    const/4 v12, 0x4

    if-ne v4, v12, :cond_4

    move v12, v7

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 825
    .local v12, "backKeyCode":Z
    :goto_4
    const/4 v13, 0x3

    if-ne v4, v13, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 826
    .local v13, "homeKeyCode":Z
    :goto_5
    const/16 v14, 0xbb

    if-ne v4, v14, :cond_6

    move v14, v7

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 827
    .local v14, "switchKeyCode":Z
    :goto_6
    const/high16 v15, 0x10000000

    and-int/2addr v15, v5

    if-eqz v15, :cond_7

    move v15, v7

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    .line 829
    .local v15, "oemSource":Z
    :goto_7
    sget-boolean v16, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v16, :cond_8

    .line 830
    const-string v7, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    .end local v5    # "source":I
    .local v17, "source":I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 833
    .end local v17    # "source":I
    .restart local v5    # "source":I
    :cond_8
    move/from16 v17, v5

    .end local v5    # "source":I
    .restart local v17    # "source":I
    :goto_8
    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    if-nez v5, :cond_9

    .line 835
    const/4 v5, 0x0

    return v5

    .line 840
    :cond_9
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_a

    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    .line 841
    .local v5, "powerKeyCode":Z
    :goto_9
    if-eqz v5, :cond_d

    .line 842
    const/4 v7, 0x2

    if-eqz v6, :cond_b

    .line 843
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    .line 844
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 845
    .local v7, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 846
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v8, v7, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 847
    .end local v7    # "msg":Landroid/os/Message;
    nop

    .line 862
    .end local v3    # "flags":I
    .local v18, "flags":I
    :goto_a
    move/from16 v18, v3

    goto :goto_b

    .line 848
    .end local v18    # "flags":I
    .restart local v3    # "flags":I
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    if-nez v1, :cond_c

    .line 849
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a

    .line 851
    :cond_c
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 852
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 853
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    move/from16 v18, v3

    const-wide/16 v2, 0x0

    .end local v3    # "flags":I
    .restart local v18    # "flags":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_b

    .line 862
    .end local v18    # "flags":I
    .restart local v3    # "flags":I
    :cond_d
    move/from16 v18, v3

    .end local v3    # "flags":I
    .restart local v18    # "flags":I
    :goto_b
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v1, 0xb

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 863
    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 864
    .local v2, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_15

    .line 865
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 866
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_e

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking ALL, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_e
    const/4 v1, 0x0

    return v1

    .line 870
    :cond_f
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->NOT_FROM_NAVBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 871
    if-nez v10, :cond_11

    .line 872
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_10

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking NOT_FROM_NAVBAR, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_10
    const/4 v1, 0x0

    return v1

    .line 877
    :cond_11
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 878
    if-eqz v10, :cond_13

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v3, :cond_13

    .line 879
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_12

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 884
    :cond_13
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 885
    if-eqz v10, :cond_15

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_15

    .line 886
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_14

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking FROM_NAVBAR_AND_HAS_NAVIGATIONBAR, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_14
    const/4 v3, 0x0

    return v3

    .line 896
    .end local v2    # "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v7, v2, [I

    aput v1, v7, v3

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 897
    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    .line 927
    :pswitch_0
    and-int/lit8 v2, v18, 0x8

    if-nez v2, :cond_16

    .line 928
    goto/16 :goto_c

    .line 930
    :cond_16
    if-nez v10, :cond_19

    if-nez v12, :cond_17

    if-eqz v14, :cond_19

    :cond_17
    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v2, :cond_19

    .line 931
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_18

    .line 932
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_18
    const/4 v1, 0x0

    return v1

    .line 936
    :cond_19
    if-nez v10, :cond_1f

    if-eqz v13, :cond_1f

    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_1f

    .line 937
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v2, :cond_1f

    .line 938
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1a

    .line 939
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 919
    :pswitch_1
    if-nez v10, :cond_1f

    if-nez v12, :cond_1b

    if-nez v13, :cond_1b

    if-eqz v14, :cond_1f

    .line 920
    :cond_1b
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1c

    .line 921
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1c
    const/4 v1, 0x0

    return v1

    .line 911
    :pswitch_2
    if-nez v10, :cond_1f

    if-eqz v13, :cond_1f

    .line 912
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1d

    .line 913
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_1d
    const/4 v1, 0x0

    return v1

    .line 906
    :pswitch_3
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1e

    .line 907
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1e
    const/4 v1, 0x1

    return v1

    .line 899
    :pswitch_4
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_1f

    .line 900
    const-string v2, "OemPhoneWindowManager"

    const-string v3, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1f
    :goto_c
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v2, :cond_21

    .line 950
    if-nez v10, :cond_21

    if-nez v13, :cond_20

    if-nez v12, :cond_20

    if-eqz v14, :cond_21

    .line 951
    :cond_20
    const/4 v1, 0x0

    return v1

    .line 956
    :cond_21
    if-nez v6, :cond_25

    .line 957
    if-eqz v12, :cond_23

    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v2, :cond_23

    .line 958
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 959
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_22

    .line 960
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 963
    :cond_22
    move-object/from16 v3, p1

    :goto_d
    const/4 v2, 0x0

    return v2

    .line 965
    :cond_23
    const/4 v2, 0x0

    move-object/from16 v3, p1

    if-eqz v14, :cond_26

    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v7, :cond_26

    .line 966
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 967
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_24

    .line 968
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 975
    :cond_25
    move-object/from16 v3, p1

    :cond_26
    if-nez v10, :cond_27

    .line 976
    and-int/lit8 v2, p2, -0x3

    .end local p2    # "policyFlags":I
    .local v2, "policyFlags":I
    goto :goto_e

    .line 990
    .end local v2    # "policyFlags":I
    .restart local p2    # "policyFlags":I
    :cond_27
    move/from16 v2, p2

    .end local p2    # "policyFlags":I
    .restart local v2    # "policyFlags":I
    :goto_e
    const/4 v7, 0x0

    if-nez v11, :cond_2b

    .line 991
    if-nez v10, :cond_2a

    if-nez v13, :cond_28

    if-nez v12, :cond_28

    if-eqz v14, :cond_2a

    .line 992
    :cond_28
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_29

    .line 993
    const-string v1, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_29
    const/4 v1, 0x0

    return v1

    .line 1009
    :cond_2a
    const/4 v1, 0x1

    goto :goto_f

    .line 998
    :cond_2b
    if-nez v10, :cond_2a

    if-nez v13, :cond_2c

    if-nez v12, :cond_2c

    if-eqz v14, :cond_2a

    :cond_2c
    if-nez v9, :cond_2a

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_2a

    if-nez v15, :cond_2a

    .line 1000
    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1009
    :goto_f
    const/16 v8, 0x86

    if-eq v4, v8, :cond_2d

    goto :goto_10

    .line 1012
    :cond_2d
    new-array v8, v1, [I

    const/16 v1, 0x11

    const/16 v16, 0x0

    aput v1, v8, v16

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1013
    if-nez v11, :cond_2f

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v1, :cond_2f

    .line 1014
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v8}, Lcom/android/server/policy/DeviceKeyHandler;->setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    .line 1015
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1016
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_2e

    .line 1017
    const-string v1, "OemPhoneWindowManager"

    const-string v7, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2e
    const/4 v1, 0x0

    return v1

    .line 1033
    :cond_2f
    :goto_10
    const/4 v1, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_13

    .line 1035
    :sswitch_0
    if-eqz v6, :cond_33

    .line 1036
    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintForShotEnabled:Z

    if-eqz v1, :cond_30

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_30

    const-string v1, "com.oneplus.camera"

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1037
    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1039
    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 1040
    const/4 v1, 0x0

    return v1

    .line 1043
    :cond_30
    iget v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    const/16 v8, 0xb

    if-ne v1, v8, :cond_32

    .line 1046
    if-eqz v11, :cond_31

    iget v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    if-eqz v1, :cond_32

    .line 1047
    :cond_31
    const/4 v1, 0x0

    return v1

    .line 1051
    :cond_32
    const-string v1, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: long press on FP: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    if-eqz v1, :cond_33

    .line 1053
    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1054
    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    invoke-direct {v0, v7, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_11

    .line 1057
    :cond_33
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 1061
    :sswitch_1
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_36

    .line 1063
    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    if-eqz v1, :cond_34

    if-eqz v6, :cond_34

    if-eqz v11, :cond_34

    .line 1064
    const/16 v1, 0xb

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1066
    :cond_34
    const/4 v1, 0x0

    return v1

    .line 1079
    :sswitch_2
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v7, :cond_36

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-eq v7, v1, :cond_36

    if-eqz v6, :cond_36

    .line 1080
    const-string v1, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: Cancelled by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " focus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d8

    if-eq v1, v7, :cond_36

    .line 1083
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    if-eqz v1, :cond_35

    .line 1084
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_12

    .line 1086
    :cond_35
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto :goto_13

    .line 1072
    :sswitch_3
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v7, :cond_36

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-eq v7, v1, :cond_36

    if-eqz v6, :cond_36

    .line 1073
    const-string v1, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: Cancelled by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1094
    :cond_36
    :goto_13
    invoke-super {v0, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x84 -> :sswitch_1
        0x85 -> :sswitch_0
        0xbb -> :sswitch_3
    .end sparse-switch
.end method

.method isFingerprintGestureLimit()Z
    .locals 1

    .line 3226
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    invoke-virtual {v0}, Lcom/oneplus/server/FingerprintGestureLimit;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3227
    const/4 v0, 0x1

    return v0

    .line 3228
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonEnabled()Z
    .locals 1

    .line 3199
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    return v0

    .line 3202
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonForLauncher()Z
    .locals 2

    .line 3208
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_1

    .line 3209
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 3211
    :cond_1
    return v1
.end method

.method public isGestureButtonRegion(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3191
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->isGestureButtonRegion(II)Z

    move-result v0

    return v0

    .line 3194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1978
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1979
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 1980
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    return v0

    .line 1981
    :cond_1
    const-string/jumbo v2, "net.oneplus.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "net.oneplus.h2launcher"

    .line 1982
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDefaultHomeApp:Ljava/lang/String;

    .line 1985
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1981
    :goto_1
    return v0
.end method

.method protected isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1991
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHideNavigationBar:Z

    return v0

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 1994
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 1993
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1995
    .local v0, "mode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1997
    .local v3, "isScreenCompat":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v4, :cond_2

    .line 1998
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1999
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v4, :cond_2

    .line 1997
    move v1, v2

    goto :goto_1

    .line 1999
    :cond_2
    nop

    .line 1997
    :goto_1
    return v1
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "configVersionName"    # Ljava/lang/String;

    .line 3155
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, ""

    if-ne p2, v0, :cond_0

    goto :goto_4

    .line 3159
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3160
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3161
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, ""

    .line 3162
    .local v2, "nowVersionName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3163
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v2, v3

    .line 3164
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3165
    .local v3, "nowVersion":[Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3166
    .local v4, "configVersion":[Ljava/lang/String;
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3167
    .local v5, "length":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 3168
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 3169
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v1

    .line 3170
    .local v7, "nowV":I
    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_2

    .line 3171
    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v8, v1

    .line 3172
    .local v8, "newV":I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 3173
    const/4 v1, 0x1

    return v1

    .line 3174
    :cond_3
    if-le v7, v8, :cond_4

    .line 3175
    return v1

    .line 3167
    .end local v7    # "nowV":I
    .end local v8    # "newV":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3180
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "nowVersionName":Ljava/lang/String;
    .end local v3    # "nowVersion":[Ljava/lang/String;
    .end local v4    # "configVersion":[Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_5
    goto :goto_3

    .line 3179
    :catch_0
    move-exception v0

    .line 3181
    :goto_3
    return v1

    .line 3156
    :cond_6
    :goto_4
    return v1
.end method

.method protected isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1970
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1971
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 1972
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    return v0

    .line 1973
    :cond_1
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;

    .line 3068
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 3069
    .local v0, "which":I
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 3070
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 3071
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 3072
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: App Launch Failed, restart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3074
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 3075
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3076
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 3077
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3078
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$11;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager$11;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 3090
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 2114
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 2115
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLidSwitchChanged :mLidState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->notifyLidSwitchChanged(Z)V

    .line 2125
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v1, p0, p3}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 2138
    return-void
.end method

.method public notifyLockTaskMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 2230
    if-eqz p1, :cond_0

    .line 2231
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "screen-pin is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    goto :goto_0

    .line 2234
    :cond_0
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "screen-pin is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    .line 2237
    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 3275
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->onConfigurationChanged()V

    .line 3277
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->onConfigurationChanged()V

    .line 3280
    :cond_0
    return-void
.end method

.method public onKeyguardDone()V
    .locals 2

    .line 2725
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardDone()V

    .line 2729
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartWhenUnlock:Z

    if-eqz v0, :cond_1

    .line 2730
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTmpDeviceId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartWhenUnlock:Z

    .line 2733
    :cond_1
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 2740
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onKeyguardOccludedChangedLw(Z)V

    .line 2741
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardOccludedChangedLw(Z)V

    .line 2744
    :cond_0
    return-void
.end method

.method public preloadWallapepr(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .line 3216
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    .line 3217
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3218
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Landroid/graphics/Bitmap;)V

    .line 3220
    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I
    .param p3, "defaultDisplay"    # Z

    .line 3300
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    if-eqz v0, :cond_0

    .line 3301
    const/4 v0, 0x0

    return v0

    .line 3303
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->rotationForOrientationLw(IIZ)I

    move-result v0

    return v0
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 2688
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 2689
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2690
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOff()V

    .line 2693
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartWhenUnlock:Z

    .line 2697
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .line 2704
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 2705
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOn()V

    .line 2708
    :cond_0
    return-void
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .line 1823
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1824
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    if-eqz v0, :cond_0

    .line 1825
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "return -1 for moving home gesture."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/4 v0, -0x1

    return v0

    .line 1832
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v0

    return v0
.end method

.method public selectRotationAnimationLw([I)V
    .locals 2
    .param p1, "anim"    # [I

    .line 1806
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton;->isScreenShotShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    .line 1809
    return-void

    .line 1815
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 1816
    return-void
.end method

.method public setCurrentUserLw(I)V
    .locals 5
    .param p1, "newUserId"    # I

    .line 1837
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 1843
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "op_navigation_bar_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1846
    .local v0, "type":I
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "op_navigation_bar_type"

    invoke-static {v2, v3, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1848
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureButton: setCurrentUserLw update navbar type to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    .end local v0    # "type":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x47

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOemSettings to user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    .line 1860
    :cond_1
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .line 1864
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1869
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    .line 1873
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "GestureButton: setInitialDisplaySize force set mHasNavigationBar to false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    return-void
.end method

.method public setRotationLw(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 2668
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2669
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2670
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2672
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2673
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_0

    .line 2674
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2676
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2678
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setRotationLw(I)V

    .line 2679
    return-void
.end method

.method public startedWakingUp()V
    .locals 1

    .line 2716
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 2717
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onStartedWakingUp()V

    .line 2720
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    .line 509
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 515
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v3, 0xb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-nez v1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_key_lock_mode"

    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 526
    invoke-virtual {v2}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v2

    .line 525
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 530
    .local v0, "showNavBar":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 531
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Restore the key lock mode to BACK_SWITCH because navigation bar is enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_acc_key_lock_mode"

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 534
    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    .line 533
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    .end local v0    # "showNavBar":Z
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_3

    .line 545
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 552
    :cond_3
    invoke-static {}, Lcom/android/server/policy/ScreenDecor;->isSupportRoundScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-nez v0, :cond_4

    .line 553
    new-instance v0, Lcom/android/server/policy/ScreenDecor;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/ScreenDecor;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 563
    return-void
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 9
    .param p1, "which"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3125
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3126
    .local v0, "whiteAppListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    move v2, v1

    .line 3126
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3127
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3128
    .local v3, "config":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3129
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_4

    .line 3130
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3131
    new-instance v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 3132
    .local v5, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    aget-object v6, v4, v1

    iput-object v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 3133
    const/4 v6, 0x1

    aget-object v7, v4, v6

    const-string/jumbo v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3134
    iput-boolean v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 3135
    :cond_0
    aget-object v7, v4, v6

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3136
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 3138
    :cond_1
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 3139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 3141
    :goto_1
    const-string v7, "default"

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3142
    iput-boolean v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 3144
    :cond_2
    const-string v6, "class"

    const/4 v7, 0x3

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3145
    aget-object v6, v4, v7

    iput-object v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 3147
    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3148
    const-string v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3152
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method updateSwapKey()V
    .locals 4

    .line 2165
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2166
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .local v0, "setVal":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2168
    .end local v0    # "setVal":Ljava/lang/String;
    :cond_1
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "1"

    .line 2172
    .restart local v0    # "setVal":Ljava/lang/String;
    :goto_1
    :try_start_0
    const-string v1, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2173
    const-string v1, "/proc/s1302/key_rep"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2176
    :cond_3
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz v1, :cond_4

    .line 2177
    const-string v1, "/proc/touchpanel/key_switch"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    :cond_4
    :goto_2
    goto :goto_3

    .line 2180
    :catch_0
    move-exception v1

    .line 2181
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "OemPhoneWindowManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method
