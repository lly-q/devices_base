.class public final Lcom/android/server/oneplus/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CMH;,
        Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    }
.end annotation


# static fields
.field private static final ADAPTION_ADJUSTMENT_SHADING_TIME:I = 0x12c

.field private static final ADAPTION_INIT_COLOR:I = 0x2b

.field private static final AUTO_ADJUSTMENT_SHADING_TIME:I = 0x0

.field private static COLOR_DELTA:I = 0x0

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

.field private static final COLOR_MATRIX_FACTOR_DELTA:F = 0.0125f

.field private static final COLOR_MATRIX_FACTOR_DELTA_SHADING_DELAY:I = 0xf

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLORBALANCE:I = 0x2b

.field private static final IS_QCOM_SAVE_MODE_USED:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NIGHT_OFF:I = 0x3

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MODE_READING_OFF:I = 0x4

.field private static final MODE_READING_OFF_AUTO:I = 0x5

.field private static final MSG_ACTIVE_MODE:I = 0x5

.field private static final MSG_AUTOCHANGE_ENVIRONMENT_CHANGED:I = 0x14

.field private static final MSG_CHECK_LIGHT:I = 0x10

.field private static final MSG_CHECK_SRGBSEN:I = 0xf

.field private static final MSG_CLOSEPTOPETIES:I = 0x18

.field private static final MSG_DEFAULT_MODE:I = 0x6

.field private static final MSG_DISABLECOLOR:I = 0x17

.field private static final MSG_NIGHT2READING:I = 0xd

.field private static final MSG_NIGHT2READMODE:I = 0x16

.field private static final MSG_NIGHT_ACTIVATED:I = 0x13

.field private static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field private static final MSG_NIGHT_SWITCH:I = 0xa

.field private static final MSG_READ2NIGHTMODE:I = 0x15

.field private static final MSG_READING2NIGHT:I = 0xe

.field private static final MSG_READING_ACTIVATED:I = 0x12

.field private static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field private static final MSG_READING_SWITCH:I = 0xb

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x4

.field private static final MSG_SCREEN_AFTER_ON:I = 0x7

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_COLORBALANCE:I = 0x3

.field private static final NIGHT_MODE_SEEKBAR_DEFAULT:I = 0x67

.field private static NIGHT_MODE_SEEKBAR_MAX:I = 0x0

.field private static final NIGHT_STAGE_CLOSED:I = 0x4

.field private static final NIGHT_STAGE_CLOSING:I = 0x3

.field private static final NIGHT_STAGE_OPENED:I = 0x2

.field private static final NIGHT_STAGE_OPENING:I = 0x1

.field private static final OP_AUTO_COLOR_MODE:I = 0x4

.field private static final OP_DCIP3_MODE:I = 0x2

.field private static final OP_DEFAULT_COLOR_MODE:I = 0x5

.field private static final OP_NIGHT_MODE:I = 0x3

.field private static final OP_SRGB_MODE:I = 0x1

.field private static final OP_SYS_Auto_Color_PROPERTY:Ljava/lang/String; = "sys.automode"

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_Default_Color_PROPERTY:Ljava/lang/String; = "sys.default_mode"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final READING_INIT_COLOR:I = -0x14

.field private static final READING_STAGE_CLOSED:I = 0x8

.field private static final READING_STAGE_CLOSING:I = 0x7

.field private static final READING_STAGE_OPENED:I = 0x6

.field private static final READING_STAGE_OPENING:I = 0x5

.field private static final RESET_NODE_DELAY:I = 0x11

.field private static RGBSENSOR_Dither:I = 0x0

.field private static SENSOR_TYPE_RGB:I = 0x0

.field private static final STAGE_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static config_colorbalance_oneplus_mode_adaption:[I

.field private static config_colorbalance_reading_mode:[I

.field private static config_colorbalance_reading_mode_SRGB_and_P3:[I


# instance fields
.field colorbalance_stop:Z

.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

.field flinger:Landroid/os/IBinder;

.field has_fingerprint:Z

.field private mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

.field private mAutoSensor:Ljava/lang/Boolean;

.field private mAutoState:Ljava/lang/Boolean;

.field private mAverageColor:I

.field private mBootColorStatus:Ljava/lang/Boolean;

.field private mBootCompleted:Z

.field private mBootPhase:I

.field private mBootStatus:Ljava/lang/Boolean;

.field private final mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorDisableStatus:Ljava/lang/Boolean;

.field private mColorMatrix:[F

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCreateModeState:I

.field private mCurrentAdaptionColorbalance:I

.field private mCurrentColorBalance:I

.field private mCurrentNightColorbalance:I

.field private mCurrentReadingColorbalance:I

.field private mCurrentSrgbSensorAverageColor:I

.field private mCurrentUser:I

.field private mDisableStatus:I

.field private mDozeColorStatus:I

.field private mFactor:F

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGeneration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsAutoModeActivated:Ljava/lang/Boolean;

.field private mIsColorManagerConnected:Ljava/lang/Boolean;

.field private mIsDisableByApp:Ljava/lang/Boolean;

.field private mIsNightModeActivated:Ljava/lang/Boolean;

.field private mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingModeActivated:Ljava/lang/Boolean;

.field private mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

.field private mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mIsSupportReadingMode:Ljava/lang/Boolean;

.field private mIsTimeActivated:Ljava/lang/Boolean;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLightBrightness:I

.field private mLightGeneration:I

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowLightCount:I

.field private mMode:I

.field private mModeEnable:I

.field private mModeId:I

.field private mModeStage:I

.field private mNight2ReadingModeStage:I

.field private mNightDisplayMoede:I

.field private mNightModeAutoStatus:I

.field private mNightModeClosingStage:I

.field private mNightModeOpingStage:I

.field private mNightModeStatus:Ljava/lang/Boolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreColorTemp:I

.field private mPretNightColorbalance:I

.field private mReading2NightModeStage:I

.field private mReadingModeClosingStage:I

.field private mReadingModeOpingStage:I

.field private mReadingModeStatus:Ljava/lang/Boolean;

.field private mSDM:Lcom/oneplus/display/SDManager;

.field private mSRGBSensorEnabled:Z

.field private mSRGBSensorListener:Landroid/hardware/SensorEventListener;

.field private mScreenOff_Quick:Ljava/lang/Boolean;

.field private mScreenOn_Quick:Ljava/lang/Boolean;

.field private mSensorColortemperature:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSrgbSensorGeneration:I

.field private mStableColor:I

.field private mStableCount:I

.field private mStartSetCount:I

.field private mStopSetCount:I

.field private mSwitchUser:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 101
    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 102
    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 234
    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 260
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    .line 262
    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 265
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    .line 311
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    .line 312
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    .line 313
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    return-void

    :array_0
    .array-data 4
        0x23
        0x2a
        0x3c
        0x45
        0x4e
        0x55
    .end array-data

    :array_1
    .array-data 4
        0x36
        0x3d
        0x4e
        0x57
        0x5d
        0x63
    .end array-data

    :array_2
    .array-data 4
        0x66
        0x70
        0x7a
        0x80
        0x86
        0x8a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    .line 156
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 157
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 158
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 159
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 160
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 161
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 162
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 163
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 164
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 165
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    .line 166
    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 167
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 168
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    .line 169
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 170
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 171
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 172
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCreateModeState:I

    .line 173
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    .line 174
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    .line 176
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 177
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 178
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 179
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 180
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 181
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 182
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 185
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 195
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 197
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 199
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 202
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 204
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 210
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeId:I

    .line 213
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 217
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 218
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDozeColorStatus:I

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 221
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    .line 222
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 223
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    .line 226
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    .line 248
    const/16 v5, 0x10

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    .line 256
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 264
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 268
    const/16 v6, 0x84

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colortemprature:[I

    .line 283
    const/16 v7, 0x36

    new-array v8, v7, [I

    fill-array-data v8, :array_2

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autocolortemp:[I

    .line 291
    new-array v8, v7, [I

    fill-array-data v8, :array_3

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    .line 298
    new-array v7, v7, [[I

    const/4 v8, 0x7

    new-array v9, v8, [I

    fill-array-data v9, :array_4

    aput-object v9, v7, v0

    new-array v9, v8, [I

    fill-array-data v9, :array_5

    aput-object v9, v7, v2

    new-array v9, v8, [I

    fill-array-data v9, :array_6

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const/4 v9, 0x6

    new-array v10, v9, [I

    fill-array-data v10, :array_7

    const/4 v11, 0x3

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_8

    const/4 v11, 0x4

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_9

    const/4 v11, 0x5

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_a

    aput-object v10, v7, v9

    new-array v10, v9, [I

    fill-array-data v10, :array_b

    aput-object v10, v7, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_c

    const/16 v10, 0x8

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_d

    const/16 v10, 0x9

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_e

    aput-object v8, v7, v3

    new-array v3, v9, [I

    fill-array-data v3, :array_f

    const/16 v8, 0xb

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_10

    const/16 v8, 0xc

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_11

    const/16 v8, 0xd

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_12

    const/16 v8, 0xe

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_13

    const/16 v8, 0xf

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_14

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x11

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x12

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x13

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x14

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x15

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x16

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x17

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x18

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_21

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_22

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_23

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_24

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_25

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_26

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_27

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_28

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_29

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2a

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2b

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2c

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2d

    const/16 v5, 0x29

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2e

    const/16 v5, 0x2a

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2f

    const/16 v5, 0x2b

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_30

    const/16 v5, 0x2c

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_31

    const/16 v5, 0x2d

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_32

    aput-object v3, v7, v1

    new-array v1, v9, [I

    fill-array-data v1, :array_33

    const/16 v3, 0x2f

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_34

    const/16 v3, 0x30

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_35

    const/16 v3, 0x31

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_36

    const/16 v5, 0x32

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_37

    const/16 v5, 0x33

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_38

    const/16 v5, 0x34

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_39

    const/16 v5, 0x35

    aput-object v1, v7, v5

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    .line 318
    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 321
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 2061
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$3;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$3;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    .line 2084
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$4;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$4;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 324
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    .line 325
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 326
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    .line 327
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "ColorBalanceThread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    .line 328
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 329
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    .line 330
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "oem.read_mode.support"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 331
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/16 v1, 0x5a

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 333
    sput v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    goto :goto_0

    .line 335
    :cond_0
    const/16 v1, 0x50

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 336
    const/16 v1, 0x82

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 338
    :goto_0
    new-array v1, v2, [I

    aput v3, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 340
    sput v9, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 342
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 343
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 350
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xba3
        0xba5
        0xc20
        0xc20
        0xc64
        0xc64
        0xc63
        0xce1
        0xce0
        0xd4e
        0xd4f
        0xd4d
        0xdd0
        0xdcd
        0xe39
        0xe39
        0xe38
        0xece
        0xecd
        0xf14
        0xf17
        0xf16
        0xfa8
        0xfa9
        0xfd4
        0xfd4
        0xfd4
        0x104d
        0x104d
        0x10af
        0x10af
        0x10af
        0x1111
        0x1110
        0x116d
        0x116c
        0x116c
        0x11c9
        0x11c9
        0x121d
        0x121c
        0x121b
        0x1260
        0x1261
        0x12ba
        0x12ba
        0x12b8
        0x1327
        0x1325
        0x136f
        0x1370
        0x1370
        0x13d7
        0x13d7
        0x1437
        0x1437
        0x1437
        0x149c
        0x149d
        0x14eb
        0x14ea
        0x14e9
        0x1528
        0x1528
        0x15b2
        0x15b2
        0x15b3
        0x15fd
        0x15fd
        0x1657
        0x1656
        0x1656
        0x168c
        0x168b
        0x16ef
        0x16f0
        0x175d
        0x175d
        0x17a9
        0x17a9
        0x17a8
        0x17d1
        0x17c4
        0x1811
        0x1810
        0x1810
        0x1845
        0x1846
        0x18ab
        0x18ab
        0x18aa
        0x18da
        0x18da
        0x192a
        0x1929
        0x1928
        0x196a
        0x1969
        0x19a3
        0x19a3
        0x19a2
        0x19f9
        0x19fa
        0x1a51
        0x1a52
        0x1a51
        0x1aa8
        0x1aa8
        0x1ad6
        0x1ad4
        0x1ad4
        0x1b3f
        0x1b40
        0x1b5e
        0x1b5f
        0x1b5e
        0x1ba0
        0x1ba0
        0x1bc2
        0x1bbf
        0x1bc0
        0x1c00
        0x1c00
        0x1c32
        0x1c2f
        0x1c2e
        0x1c81
        0x1c81
        0x1ce3
        0x1ce6
        0x1ce3
        0x1d08
    .end array-data

    :array_2
    .array-data 4
        0xba3
        0xc20
        0xc64
        0xce0
        0xd4f
        0xdd0
        0xe39
        0xece
        0xf17
        0xfa8
        0xfd4
        0x104d
        0x10af
        0x1111
        0x116d
        0x11c9
        0x121c
        0x1260
        0x12ba
        0x1327
        0x136f
        0x13d7
        0x1437
        0x149c
        0x14eb
        0x1528
        0x15b2
        0x15fd
        0x1657
        0x168c
        0x16ef
        0x175d
        0x17a9
        0x17d1
        0x1811
        0x1845
        0x18ab
        0x18da
        0x192a
        0x196a
        0x19a3
        0x19f9
        0x1a51
        0x1aa8
        0x1ad6
        0x1b3f
        0x1b5e
        0x1ba0
        0x1bc2
        0x1c00
        0x1c32
        0x1c81
        0x1ce6
        0x1d08
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x8
        0xa
        0xd
        0x10
        0x12
        0x15
        0x17
        0x19
        0x1c
        0x1e
        0x21
        0x23
        0x26
        0x28
        0x2b
        0x2d
        0x30
        0x32
        0x35
        0x37
        0x3a
        0x3c
        0x3f
        0x41
        0x44
        0x46
        0x49
        0x4b
        0x4e
        0x50
        0x53
        0x55
        0x58
        0x5a
        0x5d
        0x5f
        0x62
        0x64
        0x67
        0x69
        0x6c
        0x6e
        0x71
        0x73
        0x76
        0x78
        0x7b
        0x7d
        0x80
        0x82
        0x84
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0xa
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x8
        0xd
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x3
        0x5
        0x5
        0xa
        0xd
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x8
        0x8
        0xd
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0x10
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x8
        0xa
        0xd
        0x12
        0x17
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x8
        0xd
        0x10
        0x15
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x8
        0xa
        0x10
        0x12
        0x17
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xa
        0xd
        0x12
        0x15
        0x19
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xd
        0x12
        0x17
        0x1c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x10
        0x15
        0x19
        0x1e
        0x23
    .end array-data

    :array_f
    .array-data 4
        0xd
        0x12
        0x17
        0x1c
        0x21
        0x26
    .end array-data

    :array_10
    .array-data 4
        0xd
        0x15
        0x19
        0x1e
        0x23
        0x28
    .end array-data

    :array_11
    .array-data 4
        0xd
        0x17
        0x1c
        0x21
        0x26
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x19
        0x1e
        0x21
        0x28
        0x2d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x17
        0x1e
        0x21
        0x2b
        0x30
    .end array-data

    :array_14
    .array-data 4
        0xd
        0x14
        0x19
        0x23
        0x2d
        0x32
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x14
        0x1c
        0x26
        0x30
        0x35
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x17
        0x1e
        0x28
        0x32
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x19
        0x23
        0x2d
        0x35
        0x3a
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x1c
        0x26
        0x30
        0x37
        0x3c
    .end array-data

    :array_19
    .array-data 4
        0x15
        0x1e
        0x28
        0x32
        0x3a
        0x3f
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x21
        0x2b
        0x35
        0x3c
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x3f
        0x44
    .end array-data

    :array_1c
    .array-data 4
        0x1c
        0x26
        0x30
        0x3a
        0x41
        0x46
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x44
        0x49
    .end array-data

    :array_1e
    .array-data 4
        0x21
        0x2b
        0x35
        0x3f
        0x46
        0x4b
    .end array-data

    :array_1f
    .array-data 4
        0x23
        0x2d
        0x37
        0x41
        0x49
        0x4e
    .end array-data

    :array_20
    .array-data 4
        0x26
        0x30
        0x3a
        0x44
        0x4b
        0x50
    .end array-data

    :array_21
    .array-data 4
        0x28
        0x32
        0x3c
        0x46
        0x4e
        0x53
    .end array-data

    :array_22
    .array-data 4
        0x2b
        0x35
        0x3f
        0x49
        0x50
        0x55
    .end array-data

    :array_23
    .array-data 4
        0x2d
        0x37
        0x41
        0x4b
        0x53
        0x58
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x3a
        0x44
        0x4e
        0x55
        0x5a
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x3c
        0x46
        0x50
        0x58
        0x5d
    .end array-data

    :array_26
    .array-data 4
        0x35
        0x3f
        0x49
        0x53
        0x5a
        0x5f
    .end array-data

    :array_27
    .array-data 4
        0x2d
        0x3f
        0x49
        0x55
        0x5d
        0x62
    .end array-data

    :array_28
    .array-data 4
        0x30
        0x41
        0x4b
        0x58
        0x5f
        0x64
    .end array-data

    :array_29
    .array-data 4
        0x32
        0x44
        0x4e
        0x5a
        0x62
        0x67
    .end array-data

    :array_2a
    .array-data 4
        0x35
        0x46
        0x50
        0x5d
        0x64
        0x69
    .end array-data

    :array_2b
    .array-data 4
        0x37
        0x49
        0x53
        0x5f
        0x67
        0x6c
    .end array-data

    :array_2c
    .array-data 4
        0x3a
        0x4b
        0x55
        0x62
        0x69
        0x6e
    .end array-data

    :array_2d
    .array-data 4
        0x3c
        0x4e
        0x58
        0x64
        0x6c
        0x71
    .end array-data

    :array_2e
    .array-data 4
        0x3f
        0x50
        0x5a
        0x67
        0x6e
        0x73
    .end array-data

    :array_2f
    .array-data 4
        0x41
        0x53
        0x5d
        0x69
        0x71
        0x76
    .end array-data

    :array_30
    .array-data 4
        0x44
        0x55
        0x5f
        0x6c
        0x73
        0x78
    .end array-data

    :array_31
    .array-data 4
        0x46
        0x58
        0x62
        0x6e
        0x76
        0x7b
    .end array-data

    :array_32
    .array-data 4
        0x49
        0x5a
        0x64
        0x71
        0x78
        0x7d
    .end array-data

    :array_33
    .array-data 4
        0x4b
        0x5d
        0x67
        0x73
        0x7b
        0x80
    .end array-data

    :array_34
    .array-data 4
        0x4e
        0x5f
        0x69
        0x76
        0x7d
        0x82
    .end array-data

    :array_35
    .array-data 4
        0x50
        0x5f
        0x6c
        0x78
        0x80
        0x84
    .end array-data

    :array_36
    .array-data 4
        0x53
        0x62
        0x6e
        0x7b
        0x80
        0x84
    .end array-data

    :array_37
    .array-data 4
        0x55
        0x64
        0x71
        0x7d
        0x82
        0x84
    .end array-data

    :array_38
    .array-data 4
        0x58
        0x67
        0x73
        0x82
        0x84
        0x84
    .end array-data

    :array_39
    .array-data 4
        0x5a
        0x69
        0x76
        0x84
        0x84
        0x84
    .end array-data
.end method

.method private ResetNode()V
    .locals 5

    .line 3235
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3236
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 3237
    const-string v0, "ColorBalanceService"

    const-string v1, "already disable color mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    return-void

    .line 3240
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-eqz v0, :cond_1

    .line 3241
    return-void

    .line 3242
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 3243
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 3245
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3246
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x2

    if-ne v1, v3, :cond_4

    .line 3247
    if-ne v0, v4, :cond_2

    .line 3248
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3249
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3251
    :cond_2
    if-ne v0, v2, :cond_3

    .line 3252
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3253
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3255
    :cond_3
    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_7

    .line 3256
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    goto :goto_0

    .line 3259
    :cond_4
    if-ne v0, v4, :cond_5

    .line 3260
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3261
    :cond_5
    if-ne v0, v2, :cond_6

    .line 3262
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3263
    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 3264
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3267
    .end local v0    # "status":I
    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Lcom/oneplus/display/SDManager;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closePropeties()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5104(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # I

    .line 95
    invoke-static {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method private changeNight2ReadingMode(II)V
    .locals 18
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3079
    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3080
    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_11

    .line 3081
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v5, -0x14

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 3082
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 3083
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3084
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 3085
    invoke-direct {v1, v5, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3086
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 3088
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3089
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3090
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3091
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3092
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    goto/16 :goto_6

    .line 3094
    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v11, 0x2710

    const/4 v12, 0x0

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v15, 0x3fefff2e48e8a71eL    # 0.9999

    const/16 v5, 0xf

    const/16 v7, 0xd

    if-nez v0, :cond_5

    .line 3095
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3096
    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeNight2ReadingMode mFactor should be 1 :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpl-double v0, v9, v15

    if-lez v0, :cond_1

    .line 3099
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3100
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    .line 3101
    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpg-double v0, v9, v13

    if-gez v0, :cond_2

    .line 3102
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3103
    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3104
    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_2
    :goto_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3107
    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mCurrentNightColorbalance:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v6, 0x1f40

    const/16 v8, 0x7d0

    if-le v0, v8, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-ge v0, v6, :cond_3

    .line 3110
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    .line 3110
    .local v0, "target":I
    :goto_1
    goto :goto_2

    .line 3111
    .end local v0    # "target":I
    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-le v0, v8, :cond_4

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-ge v0, v6, :cond_4

    .line 3112
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_1

    .line 3114
    :cond_4
    const/16 v0, -0x14

    .line 3115
    .restart local v0    # "target":I
    :goto_2
    const-string v6, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mStableColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3117
    const-string v6, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3119
    .end local v0    # "target":I
    goto/16 :goto_6

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v9, 0x3a98

    if-ne v0, v11, :cond_e

    .line 3120
    const/4 v0, 0x0

    .line 3121
    .local v0, "count":I
    move v6, v3

    .line 3122
    .local v6, "target":I
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v11, v6, :cond_7

    .line 3123
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v15, v6, :cond_6

    const/4 v15, -0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x1

    :goto_3
    add-int/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3124
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3125
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v11, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3126
    add-int/lit8 v0, v0, 0x1

    .line 3128
    :cond_7
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c3c6a7f    # 0.0115f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_c

    .line 3129
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3130
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39930c    # 0.7249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_8

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39a027    # 0.7251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_8

    .line 3131
    const/4 v8, 0x5

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3132
    const/4 v8, 0x6

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3133
    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3134
    :cond_8
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3efae148    # 0.49f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_9

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f028f5c    # 0.51f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_9

    .line 3135
    const/4 v8, 0x7

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3136
    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3137
    :cond_9
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e7ef9db    # 0.249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_a

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e808312    # 0.251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_a

    .line 3138
    const/16 v8, 0x8

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3139
    const/16 v8, 0x9

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3140
    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3141
    :cond_a
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v10, v11

    cmpg-double v10, v10, v13

    if-gez v10, :cond_b

    .line 3142
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3143
    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3144
    const-string v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :cond_b
    :goto_4
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 3147
    add-int/lit8 v0, v0, 0x2

    .line 3149
    :cond_c
    if-lez v0, :cond_d

    .line 3150
    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_5

    .line 3152
    :cond_d
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3153
    const-string v5, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeNight2ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  mFactor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const-string v5, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3157
    .end local v0    # "count":I
    .end local v6    # "target":I
    :goto_5
    goto :goto_6

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-ne v0, v9, :cond_10

    .line 3158
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v8, v0

    cmpl-double v0, v8, v15

    if-lez v0, :cond_f

    .line 3159
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3161
    const/16 v0, 0x4e20

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3162
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const/16 v0, 0x20

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v5, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_6

    .line 3165
    :cond_f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3166
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3167
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 3168
    const/4 v0, 0x0

    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_6

    .line 3170
    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_11

    .line 3171
    const/4 v0, 0x6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3174
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :cond_11
    :goto_6
    monitor-exit v4

    .line 3179
    return-void

    .line 3178
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeReading2NightMode(II)V
    .locals 16
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2971
    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2972
    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_f

    .line 2973
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const/16 v6, 0x67

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 2974
    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2975
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2976
    const-string v0, "ColorBalanceService"

    const-string v4, "Screen off,changeReading2NightMode done!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2978
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2979
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2980
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "oem_nightmode_progress_status"

    invoke-static {v4, v10, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 2983
    .local v0, "progress":I
    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2984
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2986
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2987
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v8

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2988
    .end local v0    # "progress":I
    goto/16 :goto_4

    .line 2989
    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x1388

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v13, 0xf

    const/16 v14, 0xe

    if-nez v0, :cond_2

    .line 2990
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v0

    cmpg-double v0, v4, v11

    if-gez v0, :cond_1

    .line 2991
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2992
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2993
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2994
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2995
    invoke-virtual {v1, v14, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2996
    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2998
    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2999
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3000
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 3001
    invoke-virtual {v1, v14, v2, v9, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_4

    .line 3003
    :cond_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v15, 0x2710

    if-ne v0, v10, :cond_4

    .line 3004
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3005
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "oem_nightmode_progress_status"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 3008
    .local v0, "target":I
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3009
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeReading2NightMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 3012
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3013
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v4

    cmpg-double v4, v4, v11

    if-gez v4, :cond_3

    .line 3014
    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3015
    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3017
    :cond_3
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 3018
    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3019
    const-string v4, "ColorBalanceService"

    const-string v5, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    .end local v0    # "target":I
    goto/16 :goto_4

    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x4e20

    if-ne v0, v15, :cond_e

    .line 3021
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3022
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "oem_nightmode_progress_status"

    invoke-static {v4, v11, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 3025
    .restart local v0    # "target":I
    const/4 v4, 0x0

    .line 3026
    .local v4, "count":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 3027
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v5, v0, :cond_6

    .line 3028
    const/4 v4, 0x1

    .line 3029
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v11, v0, :cond_5

    const/4 v11, -0x1

    goto :goto_0

    :cond_5
    move v11, v8

    :goto_0
    add-int/2addr v5, v11

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3030
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 3031
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_1

    .line 3033
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 3036
    :cond_7
    add-int/2addr v4, v8

    .line 3038
    :goto_1
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    .line 3039
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e7ef9db    # 0.249f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e808312    # 0.251f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 3040
    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3041
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3042
    :cond_8
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3efae148    # 0.49f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f028f5c    # 0.51f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    .line 3043
    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3044
    const/4 v5, 0x5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3045
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMod mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3046
    :cond_9
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f3fbe77    # 0.749f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f404189    # 0.751f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 3047
    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3048
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3049
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x2

    .line 3052
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3053
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 3055
    :cond_b
    if-lt v4, v7, :cond_c

    .line 3056
    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_3

    .line 3057
    :cond_c
    if-ne v4, v8, :cond_d

    .line 3058
    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_3

    .line 3060
    :cond_d
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 3061
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeReading2NightMode mCurrentNightColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    const-string v5, "ColorBalanceService"

    const-string v6, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3065
    .end local v0    # "target":I
    .end local v4    # "count":I
    :goto_3
    goto :goto_4

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    if-ne v0, v10, :cond_f

    .line 3066
    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3067
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3068
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3072
    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode done(20000 -> 30000)!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_f
    :goto_4
    monitor-exit v3

    .line 3077
    return-void

    .line 3076
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeMatrix()V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 658
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 661
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    .line 667
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 668
    const-string v2, "ColorBalanceService"

    const-string v4, "close matrix!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_1
    const/16 v2, 0x18

    const/16 v4, 0x20

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 671
    return-void

    .line 662
    :cond_2
    :goto_0
    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 663
    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_3
    return-void
.end method

.method private closePropeties()V
    .locals 6

    .line 674
    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    const/16 v1, 0xb

    .line 681
    .local v1, "showUpdates":I
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    const/16 v3, 0x3f7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "showUpdates":I
    goto :goto_0

    .line 685
    :cond_0
    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties flinger is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    goto :goto_1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "read flinger 1015 is fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private getBalanceByTemprature(I)I
    .locals 17
    .param p1, "CTemp"    # I

    move-object/from16 v0, p0

    .line 2256
    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2257
    .local v2, "elemIndex":I
    const/16 v3, 0x36

    .line 2258
    .local v3, "elementLen":I
    const/4 v4, 0x0

    .line 2259
    .local v4, "enviroment_step":I
    const/4 v5, 0x0

    .line 2260
    .local v5, "balance":I
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x39

    const/16 v11, 0x2f

    const/16 v12, 0x24

    const/16 v13, 0x1a

    const/4 v14, 0x1

    if-ne v6, v14, :cond_8

    .line 2261
    const-string v6, "ColorBalanceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    if-gez v1, :cond_0

    .line 2263
    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    return v9

    .line 2267
    :cond_0
    div-int/lit8 v4, v1, 0x64

    .line 2268
    if-ge v4, v13, :cond_1

    .line 2269
    const/4 v4, 0x0

    goto :goto_0

    .line 2270
    :cond_1
    if-lt v4, v13, :cond_2

    if-ge v4, v12, :cond_2

    .line 2271
    const/4 v4, 0x1

    goto :goto_0

    .line 2272
    :cond_2
    if-lt v4, v12, :cond_3

    if-ge v4, v11, :cond_3

    .line 2273
    const/4 v4, 0x2

    goto :goto_0

    .line 2274
    :cond_3
    if-lt v4, v11, :cond_4

    if-ge v4, v10, :cond_4

    .line 2275
    const/4 v4, 0x3

    goto :goto_0

    .line 2276
    :cond_4
    if-lt v4, v10, :cond_5

    if-ge v4, v8, :cond_5

    .line 2277
    const/4 v4, 0x4

    goto :goto_0

    .line 2279
    :cond_5
    const/4 v4, 0x5

    .line 2280
    :goto_0
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in reading mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2283
    .local v6, "status":I
    if-eq v6, v14, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    goto :goto_1

    .line 2287
    :cond_6
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v5, v7, v4

    goto :goto_2

    .line 2284
    :cond_7
    :goto_1
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v5, v7, v4

    .line 2289
    :goto_2
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    .line 2290
    .end local v6    # "status":I
    goto/16 :goto_7

    .line 2291
    :cond_8
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v14, :cond_f

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    .line 2293
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " when open the adaption mode the enviroment color temperature         == "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    if-gez v1, :cond_9

    .line 2295
    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    return v9

    .line 2299
    :cond_9
    div-int/lit8 v4, v1, 0x64

    .line 2300
    if-ge v4, v13, :cond_a

    .line 2301
    const/4 v4, 0x0

    goto :goto_3

    .line 2302
    :cond_a
    if-lt v4, v13, :cond_b

    if-ge v4, v12, :cond_b

    .line 2303
    const/4 v4, 0x1

    goto :goto_3

    .line 2304
    :cond_b
    if-lt v4, v12, :cond_c

    if-ge v4, v11, :cond_c

    .line 2305
    const/4 v4, 0x2

    goto :goto_3

    .line 2307
    :cond_c
    if-lt v4, v11, :cond_d

    if-ge v4, v10, :cond_d

    .line 2308
    const/4 v4, 0x3

    goto :goto_3

    .line 2310
    :cond_d
    if-lt v4, v10, :cond_e

    if-ge v4, v8, :cond_e

    .line 2311
    const/4 v4, 0x4

    goto :goto_3

    .line 2314
    :cond_e
    const/4 v4, 0x5

    .line 2315
    :goto_3
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in adaption mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2318
    .restart local v6    # "status":I
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    aget v7, v7, v4

    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v5, v7, v8

    .line 2319
    .end local v6    # "status":I
    goto/16 :goto_7

    .line 2322
    :cond_f
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2323
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v14, "oem_nightmode_progress_status"

    const/16 v15, 0x67

    const/4 v8, -0x2

    invoke-static {v7, v14, v15, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 2325
    .local v6, "manualSeekbarPos":I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_12

    .line 2326
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    aget v7, v7, v2

    if-gt v6, v7, :cond_10

    .line 2327
    goto :goto_5

    .line 2329
    :cond_10
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_11

    .line 2330
    add-int/lit8 v2, v3, -0x1

    .line 2331
    goto :goto_5

    .line 2325
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2334
    :cond_12
    :goto_5
    if-ltz v2, :cond_1a

    const/16 v7, 0x35

    if-le v2, v7, :cond_13

    goto/16 :goto_8

    .line 2338
    :cond_13
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " when open the night mode the enviroment color temperature         == "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    if-gez v1, :cond_14

    .line 2340
    const-string v7, "ColorBalanceService"

    const-string v8, " The RGB sensor output negative data this is error !  "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return v9

    .line 2344
    :cond_14
    div-int/lit8 v4, v1, 0x64

    .line 2345
    if-ge v4, v13, :cond_15

    .line 2346
    const/4 v4, 0x0

    goto :goto_6

    .line 2347
    :cond_15
    if-lt v4, v13, :cond_16

    if-ge v4, v12, :cond_16

    .line 2348
    const/4 v4, 0x1

    goto :goto_6

    .line 2349
    :cond_16
    if-lt v4, v12, :cond_17

    if-ge v4, v11, :cond_17

    .line 2350
    const/4 v4, 0x2

    goto :goto_6

    .line 2351
    :cond_17
    if-lt v4, v11, :cond_18

    if-ge v4, v10, :cond_18

    .line 2352
    const/4 v4, 0x3

    goto :goto_6

    .line 2353
    :cond_18
    if-lt v4, v10, :cond_19

    const/16 v7, 0x42

    if-ge v4, v7, :cond_19

    .line 2354
    const/4 v4, 0x4

    goto :goto_6

    .line 2356
    :cond_19
    const/4 v4, 0x5

    .line 2357
    :goto_6
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " when in night mode the enviroment_step = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v7, v7, v2

    aget v5, v7, v4

    .line 2359
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    .line 2362
    .end local v6    # "manualSeekbarPos":I
    :goto_7
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBalanceByTemprature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    return v5

    .line 2335
    .restart local v6    # "manualSeekbarPos":I
    :cond_1a
    :goto_8
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out of range elemIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    return v9
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1563
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1564
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1563
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1567
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1555
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1556
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1555
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1559
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private handleSRGBSensorEvent(I)V
    .locals 5
    .param p1, "colortemperature"    # I

    .line 2190
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_8

    const/16 v0, 0x1f40

    if-ge p1, v0, :cond_8

    .line 2191
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2192
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2193
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2194
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2197
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 2198
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2199
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2201
    :cond_1
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ge v0, v2, :cond_6

    .line 2202
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2203
    .local v0, "delta":I
    const/16 v2, 0xc8

    if-ge v0, v2, :cond_4

    .line 2204
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2205
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2206
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ne v2, v3, :cond_5

    .line 2207
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-nez v2, :cond_2

    .line 2208
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2209
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2211
    :cond_2
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2212
    const/16 v2, 0x320

    if-ge v0, v2, :cond_3

    .line 2214
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignored,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2216
    :cond_3
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2217
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2218
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjusted,Stable color is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2221
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    .line 2227
    :cond_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2228
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2230
    .end local v0    # "delta":I
    :cond_5
    :goto_0
    goto :goto_1

    .line 2232
    :cond_6
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2233
    .restart local v0    # "delta":I
    const/16 v2, 0x64

    if-ge v0, v2, :cond_7

    .line 2235
    return-void

    .line 2238
    :cond_7
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2239
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2245
    .end local v0    # "delta":I
    :cond_8
    :goto_1
    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 381
    :cond_0
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 469
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method private nightModeSwitch(ZI)V
    .locals 18
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    move-object/from16 v1, p0

    .line 2503
    move/from16 v2, p2

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2504
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/4 v5, -0x2

    const/16 v6, 0x67

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v3, v0, v3

    .line 2509
    .local v3, "progress":I
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2510
    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 2511
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_17

    .line 2512
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2513
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2514
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2515
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2516
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2517
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2518
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2519
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2520
    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2521
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2522
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2523
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2524
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2526
    :cond_0
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2527
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2529
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2530
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2531
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2532
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2537
    :cond_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_17

    .line 2538
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v12, 0x5

    const/16 v13, 0x39

    const/16 v14, 0xf

    const/16 v15, 0x2b

    const/16 v6, 0xa

    if-eqz v0, :cond_d

    .line 2539
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v8, :cond_17

    .line 2540
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2541
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v0, :cond_5

    .line 2542
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2544
    .local v0, "status":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2545
    if-ne v0, v12, :cond_3

    .line 2546
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2547
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2548
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2550
    :cond_3
    if-eq v0, v9, :cond_4

    .line 2551
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2552
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2553
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2554
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2555
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2557
    :cond_4
    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "oem_screen_better_value"

    invoke-static {v7, v9, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2560
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2561
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :goto_0
    invoke-virtual {v1, v6, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 2564
    .end local v0    # "status":I
    goto/16 :goto_a

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v8, :cond_8

    .line 2565
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2566
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v15, :cond_6

    .line 2567
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2568
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2570
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2571
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_2

    .line 2573
    :cond_6
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v15, :cond_7

    const/16 v16, -0x1

    goto :goto_1

    :cond_7
    move/from16 v16, v10

    :goto_1
    add-int v0, v0, v16

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2575
    :goto_2
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2576
    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v9, :cond_b

    .line 2578
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v3, :cond_9

    .line 2579
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2580
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch ON: 3 --> 4, SET Balance:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2582
    :cond_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v3, :cond_a

    const/16 v16, -0x1

    goto :goto_3

    :cond_a
    move/from16 v16, v10

    :goto_3
    move/from16 v0, v16

    .line 2583
    .local v0, "delta":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2585
    .end local v0    # "delta":I
    :goto_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2586
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2587
    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v7, :cond_17

    .line 2588
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2590
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2591
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2592
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2595
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2596
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2597
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2598
    const-string v0, "ColorBalanceService"

    const-string v5, "#2 night mode had been opened!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2600
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2601
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2602
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2603
    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2604
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2606
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_a

    .line 2610
    :cond_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v7, :cond_17

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_17

    .line 2611
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v0, :cond_10

    .line 2612
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v15, v0, :cond_e

    .line 2613
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2614
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2615
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2617
    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v15, :cond_f

    const/16 v16, -0x1

    goto :goto_5

    :cond_f
    move/from16 v16, v10

    :goto_5
    move/from16 v0, v16

    .line 2618
    .restart local v0    # "delta":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2619
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2620
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2621
    .end local v0    # "delta":I
    goto/16 :goto_a

    .line 2622
    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v10, :cond_12

    .line 2623
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    move-result v0

    .line 2624
    .local v0, "status":I
    if-eq v0, v9, :cond_11

    .line 2625
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2626
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2627
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2629
    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2630
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2631
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2633
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2634
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2635
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :goto_6
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2638
    .end local v0    # "status":I
    goto/16 :goto_a

    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v8, :cond_15

    .line 2639
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v0, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    .line 2642
    .local v0, "value":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v5, v0, :cond_13

    .line 2643
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2644
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2645
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2647
    :cond_13
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v0, :cond_14

    const/16 v16, -0x1

    goto :goto_7

    :cond_14
    move/from16 v16, v10

    :goto_7
    move/from16 v5, v16

    .line 2648
    .local v5, "delta":I
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2649
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v7, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2650
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2652
    .end local v0    # "value":I
    .end local v5    # "delta":I
    :goto_8
    goto :goto_a

    :cond_15
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v9, :cond_17

    .line 2653
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v0, v6, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2655
    .local v0, "status":I
    if-eq v0, v12, :cond_16

    .line 2656
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_9

    .line 2658
    :cond_16
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2659
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2660
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2662
    :goto_9
    const-string v6, "ColorBalanceService"

    const-string/jumbo v8, "nightModeSwitch OFF done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2665
    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v6, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2673
    .end local v0    # "status":I
    :cond_17
    :goto_a
    monitor-exit v4

    .line 2674
    return-void

    .line 2673
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 432
    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 437
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->tearDown()V

    .line 442
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 444
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_3

    .line 445
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$2;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$2;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 460
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 462
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    .line 463
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 466
    :cond_3
    :goto_1
    return-void
.end method

.method private oneplusSetColorBalance(II)V
    .locals 50
    .param p1, "iValue"    # I
    .param p2, "delta"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3269
    move/from16 v3, p2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 3270
    .local v11, "r":D
    const-wide/16 v4, 0x0

    .line 3271
    .local v4, "g":D
    const-wide/16 v6, 0x0

    .line 3272
    .local v6, "b":D
    int-to-double v13, v2

    .line 3273
    .local v13, "value":D
    int-to-double v9, v3

    .line 3274
    .local v9, "dDelta":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 3275
    .local v15, "factor":D
    iget-object v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3276
    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move-wide/from16 v17, v4

    .line 3276
    .end local v4    # "g":D
    .local v17, "g":D
    const-wide v21, 0x3fc999999999999aL    # 0.2

    const/4 v4, 0x5

    const-wide v25, 0x4045800000000000L    # 43.0

    if-eqz v0, :cond_d

    :try_start_1
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const v5, 0x1fa264c

    if-eq v0, v5, :cond_1

    :try_start_2
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v5, 0x1fa2639

    if-ne v0, v5, :cond_0

    goto :goto_1

    .line 3355
    :cond_0
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    goto/16 :goto_f

    .line 3432
    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3432
    .end local v9    # "dDelta":D
    .end local v17    # "g":D
    .restart local v4    # "g":D
    .local v28, "dDelta":D
    :goto_0
    move-wide/from16 v4, v17

    goto/16 :goto_20

    .line 3277
    .end local v4    # "g":D
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    .restart local v17    # "g":D
    :cond_1
    :goto_1
    const/16 v0, 0x64

    if-le v2, v0, :cond_2

    const/16 v0, -0x64

    if-ge v2, v0, :cond_2

    .line 3278
    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 3281
    :cond_2
    cmpg-double v0, v13, v25

    if-ltz v0, :cond_8

    cmpl-double v0, v13, v25

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 3316
    :cond_3
    const-wide v19, -0x41554c77250726f2L    # -7.9576095929934E-7

    const-wide v25, 0x3ff0958debe66d88L    # 1.0365123

    const-wide v28, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    const-wide v30, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    if-nez v3, :cond_5

    .line 3319
    mul-double v30, v30, v13

    mul-double v30, v30, v13

    mul-double v28, v28, v13

    add-double v30, v30, v28

    add-double v4, v30, v25

    .line 3320
    .end local v11    # "r":D
    .local v4, "r":D
    mul-double v19, v19, v13

    mul-double v19, v19, v13

    const-wide v11, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double/2addr v11, v13

    add-double v19, v19, v11

    const-wide v11, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v19, v11

    .line 3321
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3323
    :try_start_3
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_4

    .line 3324
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3327
    :cond_4
    nop

    .line 3432
    move-wide/from16 v40, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v48, v4

    move-wide v4, v11

    move-wide/from16 v11, v48

    goto/16 :goto_20

    .line 3325
    :catch_0
    move-exception v0

    .line 3326
    .local v0, "e":Ljava/lang/NullPointerException;
    move-object/from16 v39, v0

    :try_start_4
    const-string v0, "ColorBalanceService"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3326
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v39, "e":Ljava/lang/NullPointerException;
    move-wide/from16 v40, v4

    :try_start_5
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    .line 3326
    .end local v4    # "r":D
    .local v40, "r":D
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3327
    .end local v39    # "e":Ljava/lang/NullPointerException;
    nop

    .line 3432
    .end local v40    # "r":D
    .restart local v4    # "r":D
    :goto_2
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    .line 3432
    .end local v4    # "r":D
    .restart local v40    # "r":D
    goto/16 :goto_1f

    :catchall_2
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    goto/16 :goto_20

    .line 3432
    .end local v40    # "r":D
    .restart local v4    # "r":D
    :catchall_3
    move-exception v0

    move-wide/from16 v40, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    .line 3432
    .end local v4    # "r":D
    .restart local v40    # "r":D
    goto/16 :goto_20

    .line 3329
    .end local v40    # "r":D
    .local v11, "r":D
    .restart local v17    # "g":D
    :cond_5
    const/16 v27, 0x0

    .line 3329
    .local v27, "i":I
    :goto_3
    move/from16 v5, v27

    .line 3329
    .end local v27    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_7

    .line 3330
    sub-double v15, v15, v21

    .line 3331
    move/from16 v42, v5

    int-to-double v4, v2

    .line 3331
    .end local v5    # "i":I
    .local v42, "i":I
    mul-double v32, v9, v15

    sub-double v13, v4, v32

    .line 3334
    mul-double v4, v30, v13

    mul-double/2addr v4, v13

    mul-double v32, v28, v13

    add-double v4, v4, v32

    add-double v4, v4, v25

    .line 3335
    .end local v11    # "r":D
    .restart local v4    # "r":D
    mul-double v11, v19, v13

    mul-double/2addr v11, v13

    const-wide v32, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v32, v32, v13

    add-double v11, v11, v32

    const-wide v32, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v11, v32

    .line 3336
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3339
    :try_start_6
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_6

    .line 3340
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3343
    :cond_6
    nop

    .line 3345
    move-wide/from16 v44, v4

    goto :goto_4

    .line 3341
    :catch_1
    move-exception v0

    .line 3342
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v43, v0

    :try_start_7
    const-string v0, "ColorBalanceService"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 3342
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v43, "e":Ljava/lang/NullPointerException;
    move-wide/from16 v44, v4

    :try_start_8
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    .line 3342
    .end local v4    # "r":D
    .local v44, "r":D
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 3345
    .end local v43    # "e":Ljava/lang/NullPointerException;
    :goto_4
    const-wide/16 v4, 0xf

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 3348
    goto :goto_5

    .line 3346
    :catch_2
    move-exception v0

    move-object/from16 v17, v0

    .line 3347
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 3329
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5
    add-int/lit8 v27, v42, 0x1

    .line 3329
    .end local v42    # "i":I
    .restart local v27    # "i":I
    move-wide/from16 v17, v11

    move-wide/from16 v11, v44

    const/4 v4, 0x5

    goto :goto_3

    .line 3432
    .end local v27    # "i":I
    :catchall_4
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    goto/16 :goto_20

    .line 3432
    .end local v44    # "r":D
    .restart local v4    # "r":D
    :catchall_5
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    .line 3432
    .end local v4    # "r":D
    .restart local v44    # "r":D
    goto/16 :goto_20

    .line 3432
    .end local v44    # "r":D
    .local v11, "r":D
    .restart local v17    # "g":D
    :cond_7
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    goto/16 :goto_1f

    .line 3282
    :cond_8
    :goto_6
    const-wide/16 v4, 0xf

    if-nez v3, :cond_a

    .line 3285
    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    .line 3286
    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    .line 3288
    .end local v6    # "b":D
    .local v19, "b":D
    :try_start_b
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_9

    .line 3289
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-wide v5, v11

    move-object/from16 v23, v8

    move-wide/from16 v7, v17

    move-wide/from16 v28, v9

    move-wide/from16 v9, v19

    .line 3289
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :try_start_c
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    .line 3290
    :catch_3
    move-exception v0

    goto :goto_8

    .line 3292
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :cond_9
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3292
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :goto_7
    goto :goto_9

    .line 3432
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :catchall_6
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    .line 3432
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    goto/16 :goto_20

    .line 3290
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :catch_4
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3291
    .end local v9    # "dDelta":D
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v28    # "dDelta":D
    :goto_8
    :try_start_d
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 3291
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_7

    .line 3432
    :goto_9
    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_1f

    :catchall_7
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_20

    .line 3295
    .end local v19    # "b":D
    .end local v28    # "dDelta":D
    .restart local v6    # "b":D
    .restart local v9    # "dDelta":D
    :cond_a
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3295
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    const/16 v27, 0x0

    .line 3295
    .restart local v27    # "i":I
    :goto_a
    move/from16 v9, v27

    .line 3295
    .end local v27    # "i":I
    .local v9, "i":I
    const/4 v8, 0x5

    if-ge v9, v8, :cond_c

    .line 3296
    sub-double v15, v15, v21

    .line 3297
    int-to-double v4, v2

    mul-double v19, v28, v15

    sub-double v13, v4, v19

    .line 3300
    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    .line 3301
    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    .line 3303
    .end local v6    # "b":D
    .restart local v19    # "b":D
    :try_start_e
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_b

    .line 3304
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move v10, v8

    const-wide/16 v7, 0xf

    move-wide v5, v11

    move-wide/from16 v46, v11

    move-wide v11, v7

    move-wide/from16 v7, v17

    .line 3304
    .end local v11    # "r":D
    .local v46, "r":D
    move/from16 v24, v9

    move-wide/from16 v9, v19

    .line 3304
    .end local v9    # "i":I
    .local v24, "i":I
    :try_start_f
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_b

    .line 3305
    :catch_5
    move-exception v0

    goto :goto_c

    .line 3307
    .end local v24    # "i":I
    .end local v46    # "r":D
    .restart local v9    # "i":I
    .restart local v11    # "r":D
    :cond_b
    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3307
    .end local v9    # "i":I
    .end local v11    # "r":D
    .restart local v24    # "i":I
    .restart local v46    # "r":D
    :goto_b
    goto :goto_d

    .line 3432
    .end local v24    # "i":I
    .end local v46    # "r":D
    .restart local v11    # "r":D
    :catchall_8
    move-exception v0

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    .line 3432
    .end local v11    # "r":D
    .restart local v46    # "r":D
    goto/16 :goto_20

    .line 3305
    .end local v46    # "r":D
    .restart local v9    # "i":I
    .restart local v11    # "r":D
    :catch_6
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3306
    .end local v9    # "i":I
    .end local v11    # "r":D
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v24    # "i":I
    .restart local v46    # "r":D
    :goto_c
    :try_start_10
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 3309
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_d
    :try_start_11
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 3312
    goto :goto_e

    .line 3310
    :catch_7
    move-exception v0

    move-object v4, v0

    .line 3311
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 3295
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_e
    add-int/lit8 v27, v24, 0x1

    .line 3295
    .end local v24    # "i":I
    .restart local v27    # "i":I
    move-wide v4, v11

    move-wide/from16 v6, v19

    move-wide/from16 v11, v46

    goto/16 :goto_a

    .line 3432
    .end local v27    # "i":I
    :catchall_9
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto :goto_10

    .line 3432
    .end local v19    # "b":D
    .end local v46    # "r":D
    .restart local v6    # "b":D
    .restart local v11    # "r":D
    :cond_c
    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    .line 3432
    .end local v11    # "r":D
    .restart local v46    # "r":D
    goto/16 :goto_1f

    .line 3432
    .end local v28    # "dDelta":D
    .end local v46    # "r":D
    .local v9, "dDelta":D
    .restart local v11    # "r":D
    :catchall_a
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    .line 3432
    .end local v9    # "dDelta":D
    .end local v11    # "r":D
    .restart local v28    # "dDelta":D
    .restart local v46    # "r":D
    goto/16 :goto_20

    .line 3355
    .end local v28    # "dDelta":D
    .end local v46    # "r":D
    .restart local v9    # "dDelta":D
    .restart local v11    # "r":D
    :cond_d
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3355
    .end local v9    # "dDelta":D
    .end local v11    # "r":D
    .restart local v28    # "dDelta":D
    .restart local v46    # "r":D
    :goto_f
    const/16 v0, 0x64

    if-le v2, v0, :cond_e

    const/16 v0, -0x64

    if-ge v2, v0, :cond_e

    .line 3356
    :try_start_13
    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    monitor-exit v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    return-void

    .line 3432
    :catchall_b
    move-exception v0

    move-wide/from16 v4, v17

    .line 3432
    .end local v17    # "g":D
    .end local v46    # "r":D
    .local v4, "g":D
    .restart local v11    # "r":D
    :goto_10
    move-wide/from16 v11, v46

    goto/16 :goto_20

    .line 3359
    .end local v4    # "g":D
    .end local v11    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_e
    cmpg-double v0, v13, v25

    const-wide v19, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    if-ltz v0, :cond_14

    cmpl-double v0, v13, v25

    if-nez v0, :cond_f

    goto/16 :goto_17

    .line 3396
    :cond_f
    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v3, :cond_11

    .line 3399
    const-wide v8, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v19

    const-wide v10, 0x3ff02d0e56041893L    # 1.011

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double/2addr v10, v13

    add-double/2addr v8, v10

    const-wide v10, 0x3ff63126e978d4feL    # 1.387

    add-double/2addr v8, v10

    .line 3400
    .end local v46    # "r":D
    .local v8, "r":D
    const-wide v10, 0x3ff553f7ced91687L    # 1.333

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    const-wide v19, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v10, v10, v19

    const-wide v19, -0x3fffeb851eb851ecL    # -2.01

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    mul-double v19, v19, v4

    add-double v10, v10, v19

    const-wide v4, 0x3f7c0767d34df04eL    # 0.006843

    mul-double/2addr v4, v13

    add-double/2addr v10, v4

    const-wide v4, 0x3feef765fd8adabaL    # 0.9677

    add-double/2addr v4, v10

    .line 3401
    .end local v17    # "g":D
    .restart local v4    # "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3403
    :try_start_14
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_10

    .line 3404
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v8

    move-wide/from16 v33, v4

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 3407
    :cond_10
    :goto_11
    goto :goto_12

    .line 3432
    :catchall_c
    move-exception v0

    move-wide v11, v8

    goto/16 :goto_20

    .line 3405
    :catch_8
    move-exception v0

    .line 3406
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_15
    const-string v10, "ColorBalanceService"

    const-string/jumbo v11, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 3406
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_11

    .line 3432
    :goto_12
    move-wide v11, v8

    goto/16 :goto_1f

    .line 3409
    .end local v4    # "g":D
    .end local v8    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_11
    const/16 v27, 0x0

    .line 3409
    .restart local v27    # "i":I
    :goto_13
    move/from16 v8, v27

    .line 3409
    .end local v27    # "i":I
    .local v8, "i":I
    const/4 v9, 0x5

    if-ge v8, v9, :cond_13

    .line 3410
    sub-double v15, v15, v21

    .line 3411
    int-to-double v9, v2

    mul-double v24, v28, v15

    sub-double v13, v9, v24

    .line 3414
    const-wide v9, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double v9, v9, v19

    const-wide v24, 0x3ff02d0e56041893L    # 1.011

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    mul-double v24, v24, v4

    add-double v9, v9, v24

    const-wide v24, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v24, v24, v13

    add-double v9, v9, v24

    const-wide v24, 0x3ff63126e978d4feL    # 1.387

    add-double v9, v9, v24

    .line 3415
    .end local v46    # "r":D
    .local v9, "r":D
    const-wide v24, 0x3ff553f7ced91687L    # 1.333

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    const-wide v26, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v24, v24, v26

    const-wide v26, -0x3fffeb851eb851ecL    # -2.01

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v4

    add-double v24, v24, v26

    const-wide v26, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v26, v26, v13

    add-double v24, v24, v26

    const-wide v26, 0x3feef765fd8adabaL    # 0.9677

    add-double v17, v24, v26

    .line 3416
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3418
    :try_start_16
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_12

    .line 3419
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v9

    move-wide/from16 v33, v17

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 3422
    :cond_12
    goto :goto_14

    .line 3432
    .end local v8    # "i":I
    :catchall_d
    move-exception v0

    move-wide v11, v9

    goto/16 :goto_0

    .line 3420
    .restart local v8    # "i":I
    :catch_9
    move-exception v0

    .line 3421
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    :try_start_17
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 3424
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_14
    :try_start_18
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 3427
    goto :goto_15

    .line 3425
    :catch_a
    move-exception v0

    move-object v4, v0

    .line 3426
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 3409
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_15
    add-int/lit8 v27, v8, 0x1

    .line 3409
    .end local v8    # "i":I
    .restart local v27    # "i":I
    move-wide/from16 v46, v9

    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    goto/16 :goto_13

    .line 3432
    .end local v9    # "r":D
    .end local v27    # "i":I
    .restart local v46    # "r":D
    :cond_13
    move-wide/from16 v4, v17

    .line 3432
    .end local v17    # "g":D
    .end local v46    # "r":D
    .restart local v4    # "g":D
    .restart local v11    # "r":D
    :goto_16
    move-wide/from16 v11, v46

    goto/16 :goto_1f

    .line 3360
    .end local v4    # "g":D
    .end local v11    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_14
    :goto_17
    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    if-nez v3, :cond_16

    .line 3363
    const-wide v4, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v8, -0x400522d0e5604189L    # -1.679

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v24

    add-double/2addr v4, v8

    const-wide v8, 0x3f66feb4a66559f7L    # 0.002807

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide v8, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v11, v4, v8

    .line 3364
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide v4, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v8, -0x3fff9db22d0e5604L    # -2.048

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v24

    add-double/2addr v4, v8

    const-wide v8, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide v8, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v17, v4, v8

    .line 3367
    .end local v6    # "b":D
    .local v17, "b":D
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_15

    .line 3368
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-wide/from16 v5, v46

    move-wide v7, v11

    move-wide/from16 v9, v17

    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 3371
    :cond_15
    :goto_18
    goto :goto_19

    .line 3432
    :catchall_e
    move-exception v0

    move-wide v4, v11

    move-wide/from16 v6, v17

    goto/16 :goto_10

    .line 3369
    :catch_b
    move-exception v0

    .line 3370
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1b
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 3370
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_18

    .line 3432
    :goto_19
    move-wide v4, v11

    move-wide/from16 v6, v17

    goto :goto_16

    .line 3374
    .end local v11    # "g":D
    .restart local v6    # "b":D
    .local v17, "g":D
    :cond_16
    const/16 v27, 0x0

    .line 3374
    .restart local v27    # "i":I
    :goto_1a
    move/from16 v9, v27

    .line 3374
    .end local v27    # "i":I
    .local v9, "i":I
    const/4 v10, 0x5

    if-ge v9, v10, :cond_13

    .line 3375
    sub-double v15, v15, v21

    .line 3376
    int-to-double v4, v2

    mul-double v26, v28, v15

    sub-double v13, v4, v26

    .line 3379
    const-wide v4, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v26, -0x400522d0e5604189L    # -1.679

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v24

    add-double v4, v4, v26

    const-wide v26, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v26, v26, v13

    add-double v4, v4, v26

    const-wide v26, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v17, v4, v26

    .line 3380
    const-wide v4, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v26, -0x3fff9db22d0e5604L    # -2.048

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v24

    add-double v4, v4, v26

    const-wide v26, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v26, v26, v13

    add-double v4, v4, v26

    const-wide v26, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v26, v4, v26

    .line 3383
    .end local v6    # "b":D
    .local v26, "b":D
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_17

    .line 3384
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    move-wide/from16 v5, v46

    move-wide/from16 v7, v17

    move/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v9, v26

    .line 3384
    .end local v9    # "i":I
    .local v30, "i":I
    :try_start_1d
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    goto :goto_1b

    .line 3385
    :catch_c
    move-exception v0

    goto :goto_1c

    .line 3387
    .end local v30    # "i":I
    .restart local v9    # "i":I
    :cond_17
    move/from16 v30, v9

    move/from16 v31, v10

    .line 3387
    .end local v9    # "i":I
    .restart local v30    # "i":I
    :goto_1b
    goto :goto_1d

    .line 3432
    .end local v30    # "i":I
    :catchall_f
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v26

    goto/16 :goto_10

    .line 3385
    .restart local v9    # "i":I
    :catch_d
    move-exception v0

    move/from16 v30, v9

    move/from16 v31, v10

    .line 3386
    .end local v9    # "i":I
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v30    # "i":I
    :goto_1c
    :try_start_1e
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 3389
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1d
    :try_start_1f
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    .line 3392
    goto :goto_1e

    .line 3390
    :catch_e
    move-exception v0

    move-object v4, v0

    .line 3391
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 3374
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1e
    add-int/lit8 v0, v30, 0x1

    .line 3374
    .end local v30    # "i":I
    .local v0, "i":I
    move-wide/from16 v6, v26

    move/from16 v27, v0

    goto/16 :goto_1a

    .line 3432
    .end local v0    # "i":I
    .end local v17    # "g":D
    .end local v26    # "b":D
    .end local v46    # "r":D
    .restart local v4    # "g":D
    .restart local v6    # "b":D
    .local v11, "r":D
    :goto_1f
    :try_start_21
    monitor-exit v23

    .line 3433
    return-void

    .line 3432
    .end local v28    # "dDelta":D
    .local v9, "dDelta":D
    :catchall_10
    move-exception v0

    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    .line 3432
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :goto_20
    monitor-exit v23
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    throw v0

    :catchall_11
    move-exception v0

    goto :goto_20
.end method

.method private opSetActiveModesId(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 701
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opSetActiveModesId: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    .line 703
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    .line 706
    :cond_0
    return-void
.end method

.method private opSetColorBalance(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "delta"    # I

    .line 696
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez v0, :cond_0

    .line 697
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    .line 698
    :cond_0
    return-void
.end method

.method private opSetDefaultModesId(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 709
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetDefaultModesId(I)V

    .line 711
    :cond_0
    return-void
.end method

.method private processEnvironmentChange()V
    .locals 7

    .line 2133
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2136
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2137
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2138
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2139
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_0

    .line 2141
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2142
    .local v1, "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2143
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2144
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2145
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 2146
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2147
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2151
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2152
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2153
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2154
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2155
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2156
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_2

    .line 2158
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2159
    .restart local v1    # "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2160
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2161
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2162
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_2

    .line 2163
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2164
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2168
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2170
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2171
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2172
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2173
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoMode mCurrenAdaptionColorbalance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_4

    .line 2175
    const/16 v1, 0x12c

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2176
    .restart local v1    # "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2177
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2178
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2179
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_4

    .line 2180
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2181
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoMode mCurrentAdaptionColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_0
    return-void
.end method

.method private processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 3492
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3493
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3494
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3497
    .local v3, "target":I
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processEnvironmentColorChangeAtAdaptionMode:++++mIsAutoModeActivated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 3501
    .local v4, "status":I
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    if-ne v4, v6, :cond_0

    .line 3503
    const/16 v5, 0x2b

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3504
    invoke-direct {p0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3506
    :cond_0
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3508
    :try_start_0
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3509
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode mCurrentAdaptionColorbalance: == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-le v7, v3, :cond_1

    const/4 v6, -0x1

    nop

    .line 3511
    .local v6, "delta":I
    :cond_1
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 3512
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3514
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-eq v7, v3, :cond_2

    .line 3515
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_3

    .line 3516
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 3517
    .local v7, "msg2":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->what:I

    .line 3518
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3519
    .local v8, "bundle":Landroid/os/Bundle;
    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 3520
    iget v9, p1, Landroid/os/Message;->arg2:I

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 3521
    const-string v9, "delay"

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3522
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3523
    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v9, v7, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3524
    .end local v7    # "msg2":Landroid/os/Message;
    .end local v8    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 3526
    :cond_2
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode shading done,mCurrentaAdaptionColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    .end local v6    # "delta":I
    :cond_3
    :goto_0
    monitor-exit v5

    .line 3530
    return-void

    .line 3529
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 3436
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3437
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3438
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3439
    .local v3, "target":I
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3440
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v5

    .line 3443
    .local v4, "currentSeekBar":I
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v5, :cond_2

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v4, v5, :cond_2

    .line 3444
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v3, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 3445
    .local v5, "delta":I
    :goto_0
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3446
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3447
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_1

    .line 3448
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v6, :cond_2

    .line 3449
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 3450
    .local v6, "msg2":Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v6, Landroid/os/Message;->what:I

    .line 3451
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3452
    .local v7, "bundle":Landroid/os/Bundle;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    .line 3453
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    .line 3454
    const-string v8, "delay"

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3455
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3456
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3457
    .end local v6    # "msg2":Landroid/os/Message;
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 3459
    :cond_1
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shading done,mCurrentNightColorbalance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " target:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    .end local v5    # "delta":I
    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 3464
    return-void
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3466
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3467
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3468
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3470
    .local v3, "target":I
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v4, :cond_2

    .line 3471
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, v3, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 3472
    .local v4, "delta":I
    :goto_0
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3473
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3475
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v5, v3, :cond_1

    .line 3476
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v5, :cond_2

    .line 3477
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3478
    .local v5, "msg2":Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 3479
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3480
    .local v6, "bundle":Landroid/os/Bundle;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 3481
    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3482
    const-string v7, "delay"

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3483
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3484
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3485
    .end local v5    # "msg2":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 3487
    :cond_1
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shading done,mCurrentReadingColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    .end local v4    # "delta":I
    :cond_2
    :goto_1
    return-void
.end method

.method private processScreenOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .line 3181
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3183
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 3185
    const/4 v2, 0x1

    .line 3186
    .local v2, "isKeyguard":Z
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    .line 3187
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3188
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v3, :cond_1

    .line 3189
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "mKeyguardManager is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3191
    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    move v2, v3

    .line 3192
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKeyguard =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :goto_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3195
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3197
    :cond_2
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 3198
    new-array v3, v5, [I

    const/16 v6, 0x47

    aput v6, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3199
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/16 v6, 0x8

    if-eq v3, v6, :cond_3

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    if-eq v3, v4, :cond_3

    if-eqz v2, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    goto :goto_2

    .line 3202
    :cond_4
    const-string v3, "ColorBalanceService"

    const-string/jumbo v6, "mFpm == null"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :goto_2
    sput v4, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    .line 3205
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has_fingerprint = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    const/4 v4, 0x2

    if-nez v3, :cond_5

    .line 3207
    const-string v3, "ColorDisable"

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 3208
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 3209
    const-string v3, "FingerPrintMode"

    invoke-static {v3, v4, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_3

    .line 3212
    :cond_5
    const-string v3, "FingerPrintMode"

    invoke-static {v3, v5, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 3214
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 3218
    :cond_8
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3219
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, -0x2

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 3221
    .local v3, "status_new":I
    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    :cond_9
    iget-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-nez v4, :cond_b

    .line 3222
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3223
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 3223
    .end local v3    # "status_new":I
    goto :goto_5

    .line 3216
    :cond_a
    :goto_4
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3227
    :cond_b
    :goto_5
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v3, 0x1fa2639

    if-ne v1, v3, :cond_c

    .line 3228
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 3229
    .end local v2    # "isKeyguard":Z
    :cond_c
    goto :goto_6

    .line 3230
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3232
    :goto_6
    monitor-exit v0

    .line 3233
    return-void

    .line 3232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processSetColorBalance(I)V
    .locals 4
    .param p1, "setColorBalance"    # I

    .line 3559
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 3560
    const-string v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SET_COLORBALANCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartSetCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3562
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v1, :cond_0

    .line 3563
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3566
    :cond_0
    return-void
.end method

.method private readingModeSwitch(ZII)V
    .locals 17
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 2677
    move/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2678
    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v5, 0x9c40

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x6

    const/16 v10, 0x4e20

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_3

    .line 2679
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_35

    .line 2680
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2681
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2682
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2683
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2684
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2685
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2686
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2687
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2688
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2689
    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2690
    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2692
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2694
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2696
    :cond_0
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto/16 :goto_a

    .line 2699
    :cond_1
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2700
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2701
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2702
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2703
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2704
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2708
    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_35

    .line 2709
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v7, 0x5

    const/4 v13, -0x2

    const/16 v15, 0xb

    if-eqz v0, :cond_1a

    .line 2710
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_4

    .line 2711
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2712
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2713
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2714
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2715
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2716
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    monitor-exit v4

    return-void

    .line 2719
    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v9, :cond_35

    .line 2720
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2721
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v0, :cond_7

    .line 2722
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2723
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2725
    .local v0, "status":I
    if-ne v0, v7, :cond_5

    .line 2726
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2727
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2728
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2730
    :cond_5
    if-eq v0, v6, :cond_6

    .line 2731
    const/16 v5, 0x3a98

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2732
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2733
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2735
    :cond_6
    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v8, 0x39

    invoke-static {v5, v6, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2738
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v5, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2739
    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2740
    invoke-virtual {v1, v15, v2, v12, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2741
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2743
    .end local v0    # "status":I
    :cond_7
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x2710

    if-ne v0, v13, :cond_a

    .line 2744
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_8

    .line 2745
    const/16 v0, 0x3a98

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2746
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2747
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2749
    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v6, 0x2b

    if-le v5, v6, :cond_9

    const/4 v11, -0x1

    nop

    :cond_9
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2750
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2751
    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2754
    :cond_a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x3a98

    if-ne v0, v13, :cond_13

    .line 2755
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_d

    .line 2756
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2757
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2758
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2759
    const/16 v0, 0x2b

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2761
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_b

    .line 2762
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    .line 2762
    .local v0, "target":I
    :goto_0
    goto :goto_1

    .line 2763
    .end local v0    # "target":I
    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_c

    .line 2764
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_0

    .line 2766
    :cond_c
    const/16 v0, -0x14

    .line 2767
    .restart local v0    # "target":I
    :goto_1
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStableColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    const/16 v5, 0x96

    invoke-virtual {v1, v15, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2769
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    .end local v0    # "target":I
    goto/16 :goto_a

    .line 2771
    :cond_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_e

    .line 2772
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_2

    .line 2776
    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39930c    # 0.7249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39a027    # 0.7251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_f

    .line 2777
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2779
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_2

    .line 2781
    :cond_f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_10

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_10

    .line 2782
    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2783
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2784
    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_11

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_11

    .line 2785
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2786
    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2788
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_11
    :goto_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2791
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3cf5c28f    # 0.03f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_12

    .line 2792
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2794
    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2795
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2796
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2798
    :cond_13
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v10, :cond_16

    .line 2799
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_14

    .line 2801
    const/16 v0, 0x7530

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2802
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2803
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2805
    invoke-virtual {v1, v15, v2, v3, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2806
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:,2000 --> 30000  reading colorBalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2808
    :cond_14
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v5, v3, :cond_15

    const/4 v11, -0x1

    nop

    :cond_15
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2809
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2810
    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2812
    :cond_16
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x7530

    if-ne v0, v6, :cond_35

    .line 2813
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v6, v10

    if-lez v0, :cond_17

    .line 2814
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2816
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2817
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2820
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2822
    :cond_17
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2823
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2824
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2825
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v7

    if-lez v0, :cond_18

    .line 2826
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2827
    :cond_18
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2831
    :cond_19
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2832
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2833
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2834
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2835
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2836
    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2837
    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2839
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2840
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2841
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_a

    .line 2845
    :cond_1a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v14, 0x8

    if-eq v0, v14, :cond_35

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_35

    .line 2846
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v0, :cond_31

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_1b

    goto/16 :goto_9

    .line 2867
    :cond_1b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x3e8

    if-ne v0, v14, :cond_21

    .line 2868
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_1c

    .line 2869
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2870
    const/16 v0, 0x9c4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2871
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance default:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2874
    :cond_1c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1d

    const/4 v6, -0x1

    goto :goto_3

    :cond_1d
    move v6, v11

    :goto_3
    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2875
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v0, v3, :cond_1f

    .line 2876
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1e

    const/4 v11, -0x1

    nop

    :cond_1e
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2877
    :cond_1f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v5, :cond_20

    .line 2878
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2881
    :cond_20
    invoke-virtual {v1, v15, v2, v3, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2883
    :cond_21
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x9c4

    if-ne v0, v5, :cond_27

    .line 2884
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_22

    .line 2885
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2886
    const/16 v0, 0x1388

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2887
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2890
    :cond_22
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d48b439    # 0.049f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_23

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d50e560    # 0.051f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_23

    .line 2891
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_4

    .line 2893
    :cond_23
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_24

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_24

    .line 2894
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2895
    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2896
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2897
    :cond_24
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_25

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_25

    .line 2898
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2899
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2900
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2901
    :cond_25
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f3fbe77    # 0.749f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_26

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f404189    # 0.751f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_26

    .line 2902
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2903
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2904
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_26
    :goto_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2907
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2908
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2909
    const/16 v0, 0xf

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2911
    :cond_27
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x1388

    if-ne v0, v5, :cond_2b

    .line 2912
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2914
    .local v0, "status":I
    if-ne v0, v11, :cond_28

    .line 2915
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2916
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2917
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2918
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2919
    :cond_28
    const/4 v5, 0x2

    if-eq v0, v5, :cond_2a

    const/4 v5, 0x4

    if-ne v0, v5, :cond_29

    goto :goto_5

    .line 2925
    :cond_29
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2927
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2928
    const/16 v5, 0x2b

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2929
    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2930
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2920
    :cond_2a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2921
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2923
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :goto_6
    invoke-virtual {v1, v15, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_a

    .line 2933
    .end local v0    # "status":I
    :cond_2b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x2710

    if-ne v0, v5, :cond_2f

    .line 2934
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2936
    .restart local v0    # "status":I
    const/16 v5, 0x2b

    .line 2937
    .local v5, "value":I
    if-ne v0, v6, :cond_2c

    .line 2938
    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    const/16 v8, 0x2b

    invoke-static {v6, v7, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v5, v6, 0x64

    .line 2941
    :cond_2c
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v6, v5, :cond_2d

    .line 2942
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2943
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2945
    :cond_2d
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v7, v5, :cond_2e

    const/4 v11, -0x1

    nop

    :cond_2e
    add-int/2addr v6, v11

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2946
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v6, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2948
    :goto_7
    const/16 v6, 0xa

    invoke-virtual {v1, v15, v2, v12, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2949
    .end local v5    # "value":I
    goto/16 :goto_a

    .line 2949
    .end local v0    # "status":I
    :cond_2f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v0, v10, :cond_35

    .line 2950
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2953
    .restart local v0    # "status":I
    if-eq v0, v7, :cond_30

    .line 2954
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_8

    .line 2956
    :cond_30
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2957
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2958
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2960
    :goto_8
    const/16 v5, 0x8

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2962
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    .end local v0    # "status":I
    goto :goto_a

    .line 2847
    :cond_31
    :goto_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v5, v7

    if-gez v0, :cond_34

    .line 2848
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2849
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2850
    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2851
    const/16 v0, 0x2b

    .line 2852
    .local v0, "target":I
    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v5, v6, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2854
    .local v5, "status":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_32

    const/4 v6, 0x4

    if-ne v5, v6, :cond_33

    .line 2855
    :cond_32
    const/16 v0, 0x2d

    .line 2857
    :cond_33
    invoke-virtual {v1, v15, v2, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2858
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    .end local v0    # "target":I
    goto :goto_a

    .line 2860
    .end local v5    # "status":I
    :cond_34
    const/16 v0, 0x1f4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2861
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2862
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2863
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2864
    const/16 v0, 0x8

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2865
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: mReadingModeClosingStage:-->500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :cond_35
    :goto_a
    monitor-exit v4

    .line 2969
    return-void

    .line 2968
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private revertStatus()V
    .locals 6

    .line 714
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 715
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 720
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 722
    .local v0, "status":I
    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "revertStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/16 v1, 0x2b

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 784
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 785
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 786
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 787
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 788
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 789
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 790
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 791
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    goto/16 :goto_0

    .line 771
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 772
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 773
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 774
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 775
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 776
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 777
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 778
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 780
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 781
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 782
    goto/16 :goto_0

    .line 763
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 764
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 765
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 766
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 767
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 768
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 769
    goto/16 :goto_0

    .line 747
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 748
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 749
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 750
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 751
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 752
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 753
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 754
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v5, 0x39

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 757
    .local v1, "value":I
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 758
    invoke-direct {p0, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 759
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 760
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customer value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    goto :goto_0

    .line 738
    .end local v1    # "value":I
    :pswitch_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 739
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 740
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 742
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 743
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 744
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 745
    goto :goto_0

    .line 726
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 727
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 728
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 729
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 730
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 731
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 732
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 733
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 734
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 735
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 736
    nop

    .line 795
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendMsgInternal(I)V
    .locals 0
    .param p1, "v"    # I

    .line 3699
    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 3700
    return-void
.end method

.method private setAdaptitionColorMode(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 589
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 590
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 595
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 600
    :cond_1
    :goto_0
    return-void
.end method

.method private setColorMartix(F)V
    .locals 6
    .param p1, "factor"    # F

    .line 3877
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const v3, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    const/4 v4, 0x0

    aput v2, v0, v4

    .line 3878
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 3879
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v3, v2

    const/4 v2, 0x2

    aput v3, v0, v2

    .line 3880
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 3881
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v3, v4

    const/4 v5, 0x4

    aput v3, v0, v5

    .line 3882
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    const/4 v5, 0x5

    aput v3, v0, v5

    .line 3883
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    .line 3884
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 3885
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3da7ef9e    # 0.082f

    mul-float/2addr v3, v4

    const/16 v5, 0x8

    aput v3, v0, v5

    .line 3886
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    const/16 v5, 0x9

    aput v3, v0, v5

    .line 3887
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    const/16 v3, 0xa

    aput v4, v0, v3

    .line 3888
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    .line 3889
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    .line 3890
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    .line 3891
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 3892
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 3893
    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .locals 7
    .param p1, "RED"    # F
    .param p2, "Green"    # F
    .param p3, "Blue"    # F
    .param p4, "factor"    # F
    .param p5, "factor2"    # F

    .line 3895
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p4

    mul-float/2addr v2, v4

    add-float/2addr v2, p4

    const v4, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    add-float/2addr v2, p5

    const/4 v5, 0x0

    aput v2, v0, v5

    .line 3896
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    .line 3897
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v4, v2

    sub-float v2, v3, p5

    mul-float/2addr v4, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    .line 3898
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 3899
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/4 v6, 0x4

    aput v4, v0, v6

    .line 3900
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    add-float/2addr v4, p5

    const/4 v6, 0x5

    aput v4, v0, v6

    .line 3901
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v5, v4

    sub-float v4, v3, p5

    mul-float/2addr v5, v4

    const/4 v4, 0x6

    aput v5, v0, v4

    .line 3902
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v4, 0x7

    aput v2, v0, v4

    .line 3903
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3da7ef9e    # 0.082f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x8

    aput v4, v0, v6

    .line 3904
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x9

    aput v4, v0, v6

    .line 3905
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v1

    sub-float v4, v3, p4

    mul-float/2addr v1, v4

    add-float/2addr v1, p4

    mul-float/2addr v5, v1

    sub-float v1, v3, p5

    mul-float/2addr v5, v1

    add-float/2addr v5, p5

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 3906
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 3907
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 3908
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 3909
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 3910
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 3911
    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .locals 5
    .param p1, "factor"    # F

    .line 3913
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3915
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3917
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3920
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3921
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    .line 3922
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 3923
    :cond_1
    return-void

    .line 3918
    :cond_2
    :goto_0
    return-void
.end method

.method private setDTMColorMatrix()V
    .locals 5

    .line 645
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 647
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 650
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 654
    :cond_1
    return-void

    .line 651
    :cond_2
    :goto_0
    return-void
.end method

.method private setDciP3(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 576
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 577
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 582
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 587
    :cond_1
    :goto_0
    return-void
.end method

.method private setDefaultMode(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 630
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 632
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 637
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 643
    :cond_1
    :goto_0
    return-void
.end method

.method private setNightMode(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 616
    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 617
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 622
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 628
    :cond_1
    :goto_0
    return-void
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .locals 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 484
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 487
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 488
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 490
    :cond_1
    return v0
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .locals 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 472
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 474
    .local v0, "status":I
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 477
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_1

    .line 479
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_1

    .line 475
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 481
    :goto_1
    return v0
.end method

.method private setSRGB(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 603
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 604
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v0}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 609
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 614
    :cond_1
    :goto_0
    return-void
.end method

.method private setSRGBSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 2033
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSRGBSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2035
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v2, :cond_2

    .line 2036
    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 2038
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 2039
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2041
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2043
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2044
    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return v1

    .line 2049
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 2050
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 2051
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    .line 2052
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2053
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2054
    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    return v1

    .line 2059
    :cond_2
    return v0
.end method

.method private setUp()V
    .locals 10

    .line 494
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 496
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "colorbalanceservice-night-reading-mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 498
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v1, v3, v4}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 500
    const-string v1, "ColorBalanceService"

    const-string v3, "ColorDisplayController is NULL"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 505
    const-string v1, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUp: currentUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 513
    .local v1, "I_Status":I
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_daltonizer_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 515
    .local v3, "D_Status":I
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    .line 518
    iput-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    goto :goto_1

    .line 516
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    .line 522
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 523
    .local v5, "isNightOn":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 524
    .local v6, "isReadon":Ljava/lang/Boolean;
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#0 reading mode isReadingModeActivated isReadon = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " colorbalance_stop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v7}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 526
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v7, :cond_4

    .line 527
    const-string v7, "ColorBalanceService"

    const-string v8, "#1 reading mode had been opened!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_2

    .line 530
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 531
    const-string v7, "ColorBalanceService"

    const-string v8, "#1 reading mode had been close!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_2
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 534
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 535
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    goto :goto_3

    .line 538
    :cond_5
    sget-object v7, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v7}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 539
    const-string v7, "ColorBalanceService"

    const-string v8, "#2 reading mode had been close!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v7}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v7, :cond_8

    .line 542
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v7, :cond_7

    .line 543
    const-string v2, "ColorBalanceService"

    const-string v7, "#1 night mode had been opened!"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_4

    .line 546
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 549
    :goto_4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    goto :goto_5

    .line 551
    :cond_8
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v4}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v4}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 552
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 553
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 554
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 555
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 556
    const-string v2, "ColorBalanceService"

    const-string v4, "#3 night mode have to  closed!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_9
    :goto_5
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onAutoModeChanged(I)V

    .line 559
    return-void
.end method

.method private shading(II)I
    .locals 8
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .line 2420
    move v0, p1

    .line 2421
    .local v0, "i":I
    const/4 v1, 0x1

    .line 2422
    .local v1, "delta":I
    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    if-le p2, p1, :cond_0

    .line 2423
    :goto_0
    if-ge v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    .line 2424
    add-int/2addr v0, v1

    .line 2425
    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2426
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2431
    :goto_1
    goto :goto_0

    .line 2429
    :catch_0
    move-exception v5

    .line 2430
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2430
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2435
    :cond_0
    :goto_2
    if-le v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    .line 2436
    sub-int/2addr v0, v1

    .line 2437
    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2438
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2443
    :goto_3
    goto :goto_2

    .line 2441
    :catch_1
    move-exception v5

    .line 2442
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2442
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 2446
    :cond_1
    return v0
.end method

.method private shadingSeekBar(II)I
    .locals 11
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .line 2367
    move v0, p1

    .line 2368
    .local v0, "i":I
    const/4 v1, 0x1

    .line 2369
    .local v1, "delta":I
    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le p2, p1, :cond_2

    .line 2372
    :goto_0
    if-gt v0, p2, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_0

    .line 2373
    invoke-direct {p0, v0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2374
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    goto :goto_1

    .line 2377
    :catch_0
    move-exception v8

    .line 2378
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2372
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 2381
    :cond_0
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    .line 2382
    :goto_2
    if-gt v0, p2, :cond_1

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_1

    .line 2383
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2384
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 2387
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2390
    :goto_3
    goto :goto_7

    .line 2388
    :catch_1
    move-exception v2

    .line 2389
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2389
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 2395
    :cond_2
    :goto_4
    if-lt v0, p2, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_3

    .line 2396
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2397
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2402
    goto :goto_5

    .line 2400
    :catch_2
    move-exception v8

    .line 2401
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2395
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_5
    sub-int/2addr v0, v1

    goto :goto_4

    .line 2404
    :cond_3
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    .line 2405
    :goto_6
    if-lt v0, p2, :cond_4

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_4

    .line 2406
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2407
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    add-int/lit8 v0, v0, -0x3

    goto :goto_6

    .line 2410
    :cond_4
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2413
    goto :goto_7

    .line 2411
    :catch_3
    move-exception v2

    .line 2412
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2416
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_7
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mStopSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    return v0
.end method

.method private tearDown()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDown: currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 567
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 571
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 573
    :cond_1
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .line 1062
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v0, :cond_1

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1066
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1067
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is on,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1072
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1073
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is off,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1
    :goto_0
    return-void
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "on"    # Ljava/lang/Boolean;

    .line 831
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status_manual"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 834
    .local v0, "status":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 835
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 836
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-on"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 840
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 841
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-off"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 845
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Night2ReadMode()V
    .locals 4

    .line 1325
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night2ReadMode changing night to reading mode mScreenOn_Quick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1327
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1328
    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    .line 1330
    :cond_0
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1332
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1333
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1334
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1335
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1336
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1337
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1338
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1339
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1341
    :goto_0
    return-void
.end method

.method public NightModeActivated(Z)V
    .locals 8
    .param p1, "activated"    # Z

    .line 1374
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1375
    const-string v0, "ColorBalanceService"

    const-string v2, "Gray color is on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1377
    return-void

    .line 1380
    :cond_0
    const/16 v0, 0xa

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 1381
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1383
    .local v2, "status":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1384
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_0

    .line 1385
    :cond_1
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 1386
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 1388
    :cond_2
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1389
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NightModeActivated: turn on night mode! mScreenOn_Quick = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1391
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1392
    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_1

    .line 1394
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1395
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1396
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1397
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1398
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1399
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1400
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1401
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 1402
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1404
    .end local v2    # "status":I
    :goto_1
    goto :goto_2

    .line 1405
    :cond_4
    const-string v4, "ColorBalanceService"

    const-string v5, "NightModeActivated: turn off night mode!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1407
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1408
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1409
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1410
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1411
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1412
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1413
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1414
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1416
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1418
    :goto_2
    return-void
.end method

.method public Read2NightMode()V
    .locals 6

    .line 1344
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read2NightMode changing read to nighting mode mScreenOn_Quick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1346
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1349
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1350
    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    .line 1353
    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    .line 1355
    :cond_2
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1357
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1358
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1359
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1360
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1361
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1362
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1363
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v4, 0x67

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1366
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1367
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1368
    const/16 v0, 0xe

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1371
    :goto_0
    return-void
.end method

.method public ReadModeActivated(Z)V
    .locals 6
    .param p1, "activated"    # Z

    .line 1285
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1287
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivated Turning on reading mode mScreenOn_Quick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 1289
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1290
    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    .line 1292
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1293
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1294
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1295
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1296
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1297
    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1298
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1299
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1300
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1301
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1302
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1303
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1304
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1305
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 1306
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_0

    .line 1309
    :cond_1
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onReadingModeActivated Turning off reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1311
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1313
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1314
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1315
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1316
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1317
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1318
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1319
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1320
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1322
    :goto_0
    return-void
.end method

.method public getAutoTime()Z
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 928
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2
    .param p1, "autoMode"    # I

    .line 1509
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 1510
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 1512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 1515
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1516
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    .line 1517
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1518
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    .line 1520
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1521
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1526
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_3

    .line 1527
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    .line 1529
    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 387
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    .line 388
    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    .line 394
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_1

    .line 397
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    .line 398
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    .line 400
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 401
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 405
    :cond_2
    new-instance v0, Lcom/oneplus/display/SDManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    .line 407
    :cond_3
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 1542
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 1547
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 1533
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 1538
    :cond_0
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .locals 7
    .param p1, "activated"    # Z

    .line 1465
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayInversionChange activated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsReadingModeActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsReadingModeActivated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iput-boolean p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    .line 1467
    if-nez p1, :cond_3

    .line 1469
    const-wide/16 v0, 0x20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1473
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1475
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1476
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_1

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1479
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_1

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_color_mode_settings_value"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1483
    .local v0, "status":I
    const/4 v3, 0x0

    .line 1484
    .local v3, "value":I
    if-ne v0, v1, :cond_2

    .line 1485
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oem_screen_better_value"

    const/16 v6, 0x39

    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 1488
    .end local v3    # "value":I
    .local v1, "value":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1491
    .end local v0    # "status":I
    .end local v1    # "value":I
    :cond_2
    goto :goto_1

    .line 1494
    :cond_3
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :goto_1
    return-void
.end method

.method public onModeSettingChange()V
    .locals 1

    .line 1502
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1503
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 1504
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 10
    .param p1, "activated"    # Z

    .line 931
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNightModeActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 934
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated ignore being invoked "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 936
    monitor-exit v0

    return-void

    .line 945
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 946
    const/4 v1, -0x2

    if-eqz p1, :cond_1

    .line 947
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    .line 950
    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 953
    :goto_0
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 956
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 957
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated: reading mode disable App!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_2
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current-status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_c

    .line 966
    :cond_3
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    if-eqz p1, :cond_4

    const-string v5, " Turning on night display"

    goto :goto_1

    :cond_4
    const-string v5, " Turning off night display"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 970
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 971
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v4, :cond_5

    .line 972
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v4, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    .line 974
    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 976
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_9

    .line 977
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 978
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 979
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 981
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 982
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v4, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 985
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 1001
    :cond_6
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1002
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1003
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1004
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1005
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1006
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_3

    .line 986
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 987
    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "turn off reading mode button!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 993
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 995
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 996
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 997
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 998
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 999
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 1010
    :cond_9
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1011
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1012
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1013
    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1015
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1016
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1017
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1018
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1020
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1021
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 1024
    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1041
    .local v4, "isAutoReadingModeOn":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1042
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1044
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1045
    const-string v1, "ColorBalanceService"

    const-string v2, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1047
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1048
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 1050
    :cond_b
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1051
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1052
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1054
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1059
    .end local v4    # "isAutoReadingModeOn":Ljava/lang/Boolean;
    :cond_c
    :goto_3
    monitor-exit v0

    .line 1060
    return-void

    .line 1059
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 6
    .param p1, "on"    # Z

    .line 1422
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 1424
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1425
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mReadingModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-ne v2, v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-eq v2, v3, :cond_6

    .line 1444
    :cond_1
    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1445
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1446
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1447
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1448
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_1

    .line 1450
    :cond_3
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1452
    :goto_1
    const/16 v1, -0x14

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1453
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "turn on reading mode!"

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "turn off reading mode!"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1455
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto :goto_3

    .line 1457
    :cond_5
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1458
    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1459
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1461
    :cond_6
    monitor-exit v0

    .line 1462
    return-void

    .line 1461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 7
    .param p1, "activated"    # Z

    .line 1080
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadingModeActivatedAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 1083
    monitor-exit v0

    return-void

    .line 1085
    :cond_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedAuto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1087
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    monitor-exit v0

    return-void

    .line 1090
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1091
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 1092
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1094
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1095
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1096
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1097
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1099
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1102
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1103
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1106
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1107
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1108
    const/16 v2, 0xd

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 1111
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1113
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1114
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1115
    const/16 v2, -0x14

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1116
    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1118
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1119
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1120
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1

    .line 1124
    :cond_3
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, -0x2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v2, v4, :cond_4

    goto :goto_0

    .line 1139
    :cond_4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1141
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1142
    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1144
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1145
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1146
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1148
    :cond_5
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 1149
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1151
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 1155
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 1125
    :cond_6
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1127
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1128
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1130
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1131
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1132
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v6, 0x67

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1135
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1136
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1137
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1159
    :cond_7
    :goto_1
    monitor-exit v0

    .line 1160
    return-void

    .line 1159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 10
    .param p1, "activated"    # Z

    .line 1163
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1165
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1166
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    monitor-exit v0

    return-void

    .line 1170
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 1171
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 1172
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    .line 1175
    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1178
    :goto_0
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivatedManual,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1181
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .line 1182
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "reaing disable app,ignore!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1184
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1185
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1186
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1187
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1189
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    .line 1190
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1191
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1193
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1194
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_2

    .line 1196
    :cond_4
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1198
    :goto_2
    monitor-exit v0

    return-void

    .line 1200
    :cond_5
    const-string v3, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReadingModeActivatedManual:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " current-status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_a

    .line 1223
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1224
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v8, 0xb

    if-eqz v3, :cond_7

    .line 1225
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1226
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1227
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1229
    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1230
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1231
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1232
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1233
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1234
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1235
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1236
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1238
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1239
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1240
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    .line 1242
    :cond_6
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1243
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1245
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1246
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1247
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1248
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1249
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    .line 1253
    :cond_7
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1254
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v1, :cond_8

    goto :goto_3

    .line 1272
    :cond_8
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1273
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1274
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1275
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1276
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1277
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_4

    .line 1257
    :cond_9
    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1258
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1259
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1260
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1261
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1262
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1263
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v5, 0x67

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1266
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1267
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1268
    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1269
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1270
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_a
    :goto_4
    monitor-exit v0

    .line 1282
    return-void

    .line 1281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResetStatus(I)V
    .locals 9
    .param p1, "enable"    # I

    .line 848
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDisableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    if-ne v0, p1, :cond_0

    .line 850
    return-void

    .line 851
    :cond_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 852
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 855
    .local v1, "status":I
    const/4 v2, 0x4

    const/4 v5, 0x0

    if-nez p1, :cond_1

    .line 856
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 857
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 858
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 859
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 860
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 861
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 862
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 863
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 864
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 865
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 866
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 867
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 868
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 869
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 870
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 871
    const-string v2, "ColorBalanceService"

    const-string v3, "close all color"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 872
    :cond_1
    if-ne p1, v4, :cond_4

    .line 873
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 875
    if-eq v1, v4, :cond_2

    .line 876
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 877
    :cond_2
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 878
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v2, v3

    .line 881
    .local v2, "progress":I
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 884
    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 886
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 887
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 888
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 890
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 891
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 892
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "resume colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v2    # "progress":I
    goto/16 :goto_0

    .line 894
    :cond_4
    const/4 v3, 0x2

    const/4 v6, 0x3

    if-ne p1, v3, :cond_6

    .line 895
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 896
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 897
    if-eq v1, v4, :cond_5

    .line 898
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 899
    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 900
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 901
    const/16 v2, -0x14

    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 902
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 903
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "resume gary color!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 905
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 906
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_0

    .line 909
    :cond_6
    if-ne p1, v6, :cond_7

    .line 910
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 911
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 912
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 913
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 914
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 915
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 916
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 917
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 918
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    .line 919
    :cond_7
    if-ne p1, v2, :cond_8

    .line 920
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 921
    if-eq v1, v4, :cond_8

    .line 922
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 924
    .end local v1    # "status":I
    :cond_8
    :goto_0
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 374
    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 376
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 410
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 411
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 425
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 426
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 427
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 429
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 418
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 419
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 421
    return-void
.end method

.method public sendMsg(I)V
    .locals 4
    .param p1, "v"    # I

    .line 1982
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1983
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1984
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    .line 1985
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1986
    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1989
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 1991
    :cond_1
    :goto_0
    return-void
.end method

.method public sendMsgWithValue(II)V
    .locals 3
    .param p1, "Msg"    # I
    .param p2, "value"    # I

    .line 1993
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1994
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1998
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1999
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    .line 2000
    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 2001
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 2005
    :cond_1
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .locals 4
    .param p1, "Msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delay"    # I

    .line 2007
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2008
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2009
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2010
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2011
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2017
    :cond_0
    return-void
.end method
