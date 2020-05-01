.class public Lcom/android/server/policy/OemGestureButton;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemGestureButton$EdgeEffectView;,
        Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EFFECT_DIST:[F

.field private static final FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static GESTURE_BUTTON_FOLLOW_FINGER:Z = false

.field private static final GESTURE_BUTTON_GUIDE_PAGE:Ljava/lang/String; = "com.android.settings/com.oneplus.settings.OPFullScreenGestureGuidePage"

.field private static final GESTURE_KEY_DISTANCE_THRESHOLD:I

.field private static final GESTURE_KEY_DISTANCE_TIMEOUT:I

.field private static final GESTURE_KEY_LONG_CLICK_MOVE:I

.field private static final GESTURE_KEY_LONG_CLICK_TIMEOUT:I

.field private static GESTURE_KEY_MAX_ANIM_DURATION:I = 0x0

.field private static final GESTURE_KEY_MAX_VELOCITY:F = 5000.0f

.field private static final GESTURE_KEY_MID_VELOCITY:F = 1000.0f

.field private static GESTURE_KEY_MIN_ANIM_DURATION:I = 0x0

.field private static IS_ANIM_TUNING:Z = false

.field static final IS_GESTURE_BUTTON_ENABLED:Z

.field private static final MID_SCALE_SIZE:F = 0.4f

.field private static final MIN_SCALE_SIZE:F = 0.3f

.field private static final NAV_BAR_BOTTOM:I = 0x0

.field private static final NAV_BAR_LEFT:I = 0x2

.field private static final NAV_BAR_RIGHT:I = 0x1

.field private static final SWIPE_TIMEOUT_MS:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "OemGestureButton"

.field private static mCurrentFraction:F

.field static mDismissInputMethod:Z

.field private static mEffectParams:[F

.field static mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field static mGestureButtonEnabled:Z

.field public static mGestureButtonGoingHome:Z

.field static mGestureButtonGuide:Z

.field static mGestureButtonGuiding:Z

.field public static mGestureButtonMovingHome:Z

.field public static mIsAnimationStart:Z

.field public static mLauncherGesture:Z

.field public static mNeedRecoverAnimation:Z

.field private static mRecentMoveTolerance:F

.field private static mScaleRatio:F

.field private static mTargetAlpha:F


# instance fields
.field final GESTURE_KEY_ROUND_CORNER:F

.field mContext:Landroid/content/Context;

.field private mDownTime:F

.field mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

.field private mEffectHeight:I

.field private mEffectStage:I

.field private mFromX:F

.field private mFromY:F

.field private mGestureButtonAnimDuration:I

.field mGestureScreenShotView:Landroid/view/View;

.field mGestureScreenShotViewBG:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field mIgnoreNotch:Z

.field mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field private mIsKeyguardShowing:Z

.field private mLastKeyCode:I

.field private mLastX:F

.field private mLastY:F

.field private mLongClick:Z

.field private mMaxWaitTime:J

.field private mNavigationBarPosition:I

.field mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

.field mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field private mPreparedKeycode:I

.field mPwm:Lcom/android/server/policy/PhoneWindowManager;

.field mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mScaleAlpha:F

.field private mScaleAnimationShowing:Z

.field private mScaleSize:F

.field mScreenDecor:Lcom/android/server/policy/ScreenDecor;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeLongFireable:Z

.field private mSwipeStartFromEdge:Z

.field private final mSwipeStartThreshold:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x34

    aput v3, v1, v2

    .line 93
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    .line 96
    const-string/jumbo v1, "persist.gesture_button.finger"

    .line 97
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    .line 98
    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "persist.gesture_button.debug"

    .line 99
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    .line 100
    const-string/jumbo v0, "persist.gesture_button.tuning"

    .line 101
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_ANIM_TUNING:Z

    .line 106
    const-string/jumbo v0, "persist.gesture_button.anim_max_duration"

    const/16 v1, 0x177

    .line 107
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    .line 108
    const-string/jumbo v0, "persist.gesture_button.anim_min_duration"

    const/16 v1, 0x113

    .line 109
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    .line 111
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    .line 112
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    .line 113
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    .line 114
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    .line 115
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    .line 116
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    .line 117
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    .line 119
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 121
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    .line 129
    const-string/jumbo v0, "persist.gesture_button.dis"

    const/16 v1, 0x3c

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    .line 131
    const-string/jumbo v0, "persist.gesture_button.timeout"

    .line 132
    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    .line 135
    const-string/jumbo v0, "persist.gesture_button.long_click_move"

    .line 136
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_MOVE:I

    .line 137
    const-string/jumbo v0, "persist.gesture_button.long_click_timeout"

    const/16 v1, 0xc8

    .line 138
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_TIMEOUT:I

    .line 145
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->EFFECT_DIST:[F

    .line 146
    sget-object v0, Lcom/android/server/policy/OemGestureButton;->EFFECT_DIST:[F

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F

    .line 1254
    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    .line 1255
    const v1, 0x3dcccccd    # 0.1f

    sput v1, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    .line 1256
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1258
    const v1, 0x3e19999a    # 0.15f

    sput v1, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    .line 1259
    sput v4, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    .line 1261
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v0, p0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 126
    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    .line 127
    const/16 v1, 0xe1

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    .line 140
    const-string/jumbo v1, "persist.gesture_button.round_px"

    const/16 v2, 0x50

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_ROUND_CORNER:F

    .line 147
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 151
    iput-boolean v1, v0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    .line 152
    iput-boolean v1, v0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    .line 154
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iput v2, v0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    .line 157
    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    .line 158
    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    .line 173
    iput-boolean v1, v0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    .line 766
    new-instance v1, Lcom/android/server/policy/OemGestureButton$5;

    invoke-direct {v1, v0}, Lcom/android/server/policy/OemGestureButton$5;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 177
    const-string v1, "OemGestureButton"

    const-string v2, "OemGestureButton init"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    .line 179
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 180
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 181
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 183
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    .line 184
    const/16 v4, 0x32

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    .line 185
    const/16 v4, 0x40

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    .line 186
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "OemGestureButtonThread"

    const/4 v6, -0x8

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 188
    .local v4, "oemGestureButtonThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v5, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 190
    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "OemGestureBtnRegionThread"

    invoke-direct {v5, v7, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 192
    .local v5, "oemGestureBtnRegionThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 193
    new-instance v7, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 194
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 196
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "OemGestureBtnAnimThread"

    invoke-direct {v7, v8, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v6, v7

    .line 198
    .local v6, "oemGestureAnimThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v7, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 200
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 203
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7e1

    const v15, 0x1000508

    const/16 v16, -0x2

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 214
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 216
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v8, 0x50d0013

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 217
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "GestureScreenshot"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x12

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 221
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v8, Lcom/android/server/policy/OemGestureButton$1;

    invoke-direct {v8, v0}, Lcom/android/server/policy/OemGestureButton$1;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 262
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->startScaleDownAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/policy/OemGestureButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/OemGestureButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->triggerGestureVirtualKeypress(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->dismissInputMethod()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/OemGestureButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # F

    .line 89
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/policy/OemGestureButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # F

    .line 89
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/OemGestureButton;IIFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/OemGestureButton;->toggleRecentAppsWithGesture(IIFF)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->showScreenShot()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/OemGestureButton;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateGestureButtonRegion()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->startScaleUpAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemGestureButton;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget-wide v0, p0, Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/OemGestureButton;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # J

    .line 89
    iput-wide p1, p0, Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/OemGestureButton;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->createScaleDownAnimationLocked()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/OemGestureButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemGestureButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/server/policy/OemGestureButton;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return v0
.end method

.method static synthetic access$800()[F
    .locals 1

    .line 89
    sget-object v0, Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemGestureButton;

    .line 89
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    return v0
.end method

.method private checkAllBlack(Landroid/graphics/Bitmap;)Z
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1210
    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1212
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    .line 1215
    .local v0, "buffer":[I
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1216
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1215
    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1217
    const/4 v2, 0x1

    .line 1218
    .local v2, "allBlack":Z
    aget v3, v0, v1

    .line 1219
    .local v3, "firstColor":I
    nop

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 1220
    aget v4, v0, v1

    if-eq v4, v3, :cond_1

    .line 1221
    const/4 v2, 0x0

    .line 1222
    goto :goto_1

    .line 1219
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v2
.end method

.method private createScaleDownAnimationLocked()Landroid/view/animation/Animation;
    .locals 10

    .line 1266
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v2, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v4, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v4, v0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1269
    .local v0, "scale":Landroid/view/animation/Animation;
    sget-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1270
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1271
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1273
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    sget v4, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1274
    .local v2, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v3, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1275
    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1276
    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 1278
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1279
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1280
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1281
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 1282
    move-object v1, v3

    .line 1284
    .local v1, "a":Landroid/view/animation/Animation;
    return-object v1
.end method

.method private dismissInputMethod()V
    .locals 2

    .line 455
    const-string v0, "OemGestureButton"

    const-string v1, "dismissInputMethod"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    .line 457
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 459
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 464
    :cond_1
    return-void
.end method

.method private getRoundRectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;

    .line 437
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 438
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 440
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 441
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 442
    .local v3, "rectF":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 443
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    const v1, -0xbdbdbe

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 446
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 447
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_ROUND_CORNER:F

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_ROUND_CORNER:F

    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 448
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 449
    invoke-virtual {v1, p1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 450
    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 1144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleTouch(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 472
    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 474
    .local v2, "action":I
    if-eqz v2, :cond_1

    iget-boolean v3, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-nez v3, :cond_1

    .line 475
    return-void

    .line 478
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 479
    .local v3, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 480
    .local v4, "rawY":F
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 481
    const-string v5, "OemGestureButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onTouch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " rawX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " rawY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eq v2, v5, :cond_2c

    const/16 v9, 0x1f4

    const/4 v10, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_0

    .line 762
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v5, :cond_30

    const-string v5, "OemGestureButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 552
    :pswitch_0
    sget-boolean v9, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v9, v8, :cond_3

    .line 554
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    .line 555
    return-void

    .line 558
    :cond_3
    iget-boolean v9, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    if-ne v9, v6, :cond_4

    goto/16 :goto_e

    .line 560
    :cond_4
    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v9, :cond_5

    .line 561
    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    sub-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 561
    .local v9, "moveDistance":F
    goto :goto_0

    .line 563
    .end local v9    # "moveDistance":F
    :cond_5
    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 566
    .restart local v9    # "moveDistance":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 567
    .local v13, "delta":J
    sget v15, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_MOVE:I

    int-to-float v15, v15

    cmpg-float v15, v9, v15

    if-gez v15, :cond_6

    .line 568
    sget v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_TIMEOUT:I

    int-to-long v7, v5

    cmp-long v5, v13, v7

    if-lez v5, :cond_30

    .line 569
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    .line 570
    goto/16 :goto_e

    .line 575
    :cond_6
    iget-object v15, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v15, :cond_7

    .line 577
    iget-object v15, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 579
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 577
    invoke-virtual {v15, v12, v5}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 579
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 580
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_7

    .line 581
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 585
    :cond_7
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/high16 v12, 0x43c80000    # 400.0f

    if-nez v5, :cond_c

    .line 586
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v15, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v15, v15

    cmpl-float v5, v5, v15

    if-lez v5, :cond_b

    .line 587
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v11, :cond_a

    .line 588
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v12

    if-gez v5, :cond_9

    .line 592
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v5, :cond_8

    .line 593
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_gesture_button_guide_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 596
    :cond_8
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 600
    :cond_9
    :goto_1
    return-void

    .line 602
    :cond_a
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 604
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 605
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 607
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    sget v7, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 611
    :cond_b
    const/4 v6, 0x5

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 613
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    goto :goto_3

    .line 616
    :cond_c
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v15, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v15, v15

    cmpl-float v5, v5, v15

    if-lez v5, :cond_10

    .line 617
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v11, :cond_f

    .line 618
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v12

    if-gez v5, :cond_e

    .line 622
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v5, :cond_d

    .line 623
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_gesture_button_guide_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 626
    :cond_d
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 630
    :cond_e
    :goto_2
    return-void

    .line 632
    :cond_f
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 633
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 634
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 636
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    sget v7, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 640
    :cond_10
    const/4 v6, 0x5

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 642
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 645
    :cond_11
    :goto_3
    iput v3, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    .line 646
    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    .line 647
    goto/16 :goto_e

    .line 649
    .end local v9    # "moveDistance":F
    .end local v13    # "delta":J
    :pswitch_1
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v5, :cond_12

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_12

    .line 651
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    .line 652
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 653
    return-void

    .line 655
    :cond_12
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    .line 657
    sput-boolean v7, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 658
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 660
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v5, :cond_15

    .line 661
    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-eqz v5, :cond_14

    .line 662
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "op_gesture_button_guide_state"

    .line 664
    iget v10, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v10, v8, :cond_13

    .line 662
    move v10, v6

    goto :goto_4

    .line 664
    :cond_13
    nop

    .line 662
    move v10, v8

    :goto_4
    invoke-static {v5, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    .line 666
    :cond_14
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "op_gesture_button_guide_state"

    const/4 v10, -0x1

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    .line 669
    :cond_15
    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-eqz v5, :cond_2c

    .line 670
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_16

    .line 671
    const-string v5, "OemGestureButton"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start send mPreparedKeycode="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_16
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 674
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-virtual {v5, v7, v9}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 676
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_18

    .line 678
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    if-nez v5, :cond_17

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemGestureButton;->dismissInputMethod()V

    .line 681
    :cond_17
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v9, Lcom/android/server/policy/OemGestureButton$4;

    invoke-direct {v9, v0}, Lcom/android/server/policy/OemGestureButton$4;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v5, v9}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    .line 697
    :cond_18
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v5, :cond_1c

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1c

    .line 698
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 699
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 700
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 701
    .local v5, "velocityX":F
    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 702
    .local v9, "velocityY":F
    cmpl-float v11, v5, v9

    if-lez v11, :cond_19

    move v11, v5

    goto :goto_5

    :cond_19
    move v11, v9

    .line 703
    .local v11, "max":F
    :goto_5
    const v13, 0x459c4000    # 5000.0f

    cmpl-float v13, v11, v13

    if-lez v13, :cond_1a

    .line 704
    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    iput v12, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    goto :goto_6

    .line 705
    :cond_1a
    const/high16 v13, 0x447a0000    # 1000.0f

    cmpl-float v13, v11, v13

    if-lez v13, :cond_1b

    .line 706
    sget v13, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    sget v14, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    add-int/2addr v13, v14

    div-int/2addr v13, v12

    iput v13, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    goto :goto_6

    .line 709
    :cond_1b
    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    iput v12, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    .line 711
    :goto_6
    iget-object v12, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 712
    const/4 v12, 0x0

    iput-object v12, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 713
    sget-boolean v12, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v12, :cond_1c

    .line 714
    const-string v12, "OemGestureButton"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "velocityX="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " velocityY="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " mGestureButtonAnimDuration="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v5    # "velocityX":F
    .end local v9    # "velocityY":F
    .end local v11    # "max":F
    :cond_1c
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 487
    :pswitch_2
    sput-boolean v7, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 488
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/16 v10, 0xbb

    if-nez v5, :cond_20

    .line 489
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v5, v13

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1d

    .line 490
    return-void

    .line 492
    :cond_1d
    iput v3, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    .line 493
    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    .line 494
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpg-float v5, v5, v13

    if-ltz v5, :cond_1f

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v13, v12

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1e

    goto :goto_7

    .line 500
    :cond_1e
    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto :goto_9

    .line 495
    :cond_1f
    :goto_7
    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    .line 496
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v5, :cond_26

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v11, v12

    div-int/2addr v11, v8

    int-to-float v11, v11

    cmpl-float v5, v5, v11

    if-lez v5, :cond_26

    .line 497
    iput v10, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto :goto_9

    .line 503
    :cond_20
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v5, v6, :cond_21

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v5, v13

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_22

    :cond_21
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v5, v12, :cond_23

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_23

    .line 505
    :cond_22
    return-void

    .line 509
    :cond_23
    iput v3, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    .line 510
    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    .line 511
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpg-float v5, v5, v13

    if-ltz v5, :cond_25

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v13, v12

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_24

    goto :goto_8

    .line 517
    :cond_24
    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto :goto_9

    .line 512
    :cond_25
    :goto_8
    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    .line 513
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v5, :cond_26

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v11, v12

    div-int/2addr v11, v8

    int-to-float v11, v11

    cmpl-float v5, v5, v11

    if-lez v5, :cond_26

    .line 514
    iput v10, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    .line 520
    :cond_26
    :goto_9
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 521
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_27

    .line 522
    const-string v5, "OemGestureButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start from edge mPreparedKeycode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_27
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eqz v5, :cond_28

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v5, :cond_28

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_28

    .line 526
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    .line 527
    return-void

    .line 530
    :cond_28
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_29

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v6

    goto :goto_a

    :cond_29
    move v5, v7

    :goto_a
    iput-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    .line 532
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_2b

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-nez v5, :cond_2b

    .line 533
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-virtual {v5, v7, v9}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 535
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 537
    sput-boolean v7, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    .line 539
    sput-boolean v6, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 540
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2a

    .line 541
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_b

    .line 543
    :cond_2a
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 545
    :goto_b
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 547
    :cond_2b
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iput v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    .line 548
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iput v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    iput v5, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    .line 550
    goto/16 :goto_e

    .line 723
    :cond_2c
    :goto_c
    :pswitch_3
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v5, :cond_2d

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_2d

    .line 725
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    .line 726
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 727
    return-void

    .line 729
    :cond_2d
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v5, :cond_2f

    .line 730
    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-nez v5, :cond_2e

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v5, :cond_2e

    .line 731
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 734
    :cond_2e
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 736
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 740
    :cond_2f
    :goto_d
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 741
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 743
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->IS_ANIM_TUNING:Z

    if-eqz v5, :cond_30

    .line 744
    const-string/jumbo v5, "persist.gesture_button.targetalpha"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v8

    sput v5, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    .line 745
    const-string/jumbo v5, "persist.gesture_button.scaleratio"

    const/16 v9, 0xa

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sput v5, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    .line 746
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const-string/jumbo v9, "persist.gesture_button.interpolator1"

    const/16 v10, 0x28

    .line 748
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const-string/jumbo v10, "persist.gesture_button.interpolator2"

    .line 749
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    const-string/jumbo v10, "persist.gesture_button.interpolator3"

    const/16 v11, 0x14

    .line 750
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    const-string/jumbo v11, "persist.gesture_button.interpolator4"

    const/16 v12, 0x64

    .line 751
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-direct {v5, v9, v7, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v5, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 752
    const-string/jumbo v5, "persist.gesture_button.mCurrentFraction"

    const/16 v7, 0xf

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sput v5, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    .line 753
    const-string/jumbo v5, "persist.gesture_button.anim_max_duration"

    const/16 v7, 0x177

    .line 754
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    .line 755
    const-string/jumbo v5, "persist.gesture_button.anim_min_duration"

    const/16 v7, 0x113

    .line 756
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    .line 757
    const-string/jumbo v5, "persist.gesture_button.mRecentMoveTolerance"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    sput v5, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    .line 764
    :cond_30
    :goto_e
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static isEnabled()Z
    .locals 1

    .line 1232
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

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

.method static isGuiding()Z
    .locals 1

    .line 1229
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    return v0
.end method

.method private isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 338
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "net.oneplus.launcher"

    .line 343
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.launcher.Launcher"

    .line 344
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.quickstep.RecentsActivity"

    .line 345
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0
.end method

.method public static notifyCallbacksLocked()V
    .locals 2

    .line 1289
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1290
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "notifyCallbacksLocked."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    return-void
.end method

.method private sendGestureMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1057
    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/scene/OimcBrickModeObserver;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "intercept gesture event in Zen Mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1062
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1063
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    .line 1065
    :cond_2
    return-void
.end method

.method private showScreenShot()V
    .locals 14

    .line 349
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v0, :cond_f

    .line 350
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v0, :cond_0

    .line 351
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for not follow finger."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 355
    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for keyguard locked."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for window animating."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for docked stack."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_4
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-eqz v0, :cond_5

    .line 374
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showScreenShot: skip screenshot for landscape pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 379
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x509000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 381
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    const v4, 0x5070054

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    .line 384
    new-instance v4, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 385
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 386
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v5, :cond_7

    .line 388
    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 389
    .local v5, "dockTop":I
    if-eqz v5, :cond_6

    .line 390
    iget-object v7, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    .line 391
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 392
    .local v7, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7, v6, v5, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 393
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v10, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    invoke-direct {v8, v6, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v8

    .line 395
    .end local v7    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    iget v7, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    sub-int v8, v6, v5

    const/4 v9, 0x0

    const v10, 0x186a0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 397
    .end local v5    # "dockTop":I
    goto :goto_0

    :cond_7
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 398
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    const/4 v7, 0x0

    const v8, 0x186a0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 400
    :cond_8
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 401
    iget v8, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v9, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    const/4 v10, 0x0

    const v11, 0x186a0

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object v7, v4

    invoke-static/range {v7 .. v13}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 404
    :cond_9
    :goto_0
    if-eqz v2, :cond_d

    .line 406
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemGestureButton;->getRoundRectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 415
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 417
    const-string v1, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showScreenShot for + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " rect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mDisplayRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNavigationBarPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 421
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_a
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 425
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_b
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_c

    .line 428
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 430
    :cond_c
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f6

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 431
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "rect":Landroid/graphics/Rect;
    goto :goto_3

    .line 408
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "rect":Landroid/graphics/Rect;
    :cond_d
    iput-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 409
    const-string v1, "OemGestureButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showScreenShot: cannot take screenshot for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 356
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_e
    :goto_2
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showScreenShot: skip screenshot for Home or Recents. focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " topFull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 433
    :cond_f
    :goto_3
    return-void
.end method

.method private startScaleDownAnimation(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 266
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    .line 269
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v6, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v4, v6

    aput v4, v3, v0

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 271
    .local v1, "scaleDownX":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v6, v4, v5

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v7, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v6, v7

    aput v6, v4, v0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 273
    .local v3, "scaleDownY":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    aput v7, v6, v5

    sget v7, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    aput v7, v6, v0

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 275
    .local v4, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v5

    aput-object v1, v6, v0

    aput-object v4, v6, v2

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 277
    .local v0, "objAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/android/server/policy/OemGestureButton$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$2;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 298
    sget v2, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 299
    sget-object v2, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 301
    const-string v2, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startScaleDownAnimation: mScaleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private startScaleUpAnimation(Landroid/widget/ImageView;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 304
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    .line 306
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 308
    .local v1, "scaleDownX":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v7, v6, v5

    aput v4, v6, v0

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 310
    .local v3, "scaleDownY":Landroid/animation/PropertyValuesHolder;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    iget v8, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    aput v8, v7, v5

    aput v4, v7, v0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 311
    .local v4, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v5

    aput-object v1, v6, v0

    aput-object v4, v6, v2

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 313
    .local v0, "objAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/android/server/policy/OemGestureButton$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$3;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    const-wide/16 v5, 0x96

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    sget v2, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 332
    sget-object v2, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 334
    const-string v2, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startScaleUpAnimation: mScaleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method private toggleRecentAppsWithGesture(IIFF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "alpha"    # F

    .line 1068
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1070
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentAppsWithGesture(IIFF)V

    .line 1073
    :cond_0
    return-void
.end method

.method private triggerGestureVirtualKeypress(I)V
    .locals 17
    .param p1, "keyCode"    # I

    .line 1076
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1077
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1078
    .local v14, "now":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const v13, 0x10000101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1083
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1085
    .local v2, "upEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1086
    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1089
    return-void
.end method

.method private updateGestureButtonRegion()V
    .locals 3

    .line 774
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-nez v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 779
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    .line 781
    :cond_1
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "updateGestureButtonRegion: not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-nez v0, :cond_3

    .line 785
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7de

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 787
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 790
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 792
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "GestureButtonRegion"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 794
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 795
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateWindowParams()V

    .line 796
    new-instance v0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    .line 797
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 800
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateWindowParams()V

    .line 801
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    :goto_0
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGestureButtonRegion: mNavigationBarPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSwipeStartThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void
.end method

.method private updateWindowParams()V
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 811
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 812
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 816
    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 817
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 818
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 820
    :goto_1
    return-void
.end method

.method private updateWindows(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "focus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1102
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_1

    .line 1103
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eqz v2, :cond_0

    const-string v2, "com.android.settings/com.oneplus.settings.OPFullScreenGestureGuidePage"

    .line 1104
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    .line 1106
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-eqz v2, :cond_2

    .line 1107
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1110
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "buttons_show_on_screen_navkeys"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1113
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 1115
    return-void
.end method


# virtual methods
.method focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1118
    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eqz v0, :cond_0

    .line 1119
    invoke-direct {p0, p2}, Lcom/android/server/policy/OemGestureButton;->updateWindows(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1121
    :cond_0
    return-void
.end method

.method isGestureButtonRegion(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1236
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_6

    .line 1237
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1238
    const-string v0, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGestureButtonRegion: x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1242
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v0, v3

    if-lt p2, v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 1244
    :cond_2
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v0, v2, :cond_4

    .line 1245
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 1247
    :cond_4
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    if-gt p1, v0, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    .line 1250
    :cond_6
    return v1
.end method

.method isScreenShotShowing()Z
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method navigationBarPosition(III)V
    .locals 4
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "navigationBarPosition":I
    if-le p1, p2, :cond_1

    .line 1126
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 1127
    const/4 v0, 0x2

    goto :goto_0

    .line 1129
    :cond_0
    const/4 v0, 0x1

    .line 1132
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-eq v0, v1, :cond_2

    .line 1133
    const-string v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update mNavigationBarPosition to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 1136
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 1139
    :cond_2
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V

    .line 469
    return-void
.end method

.method preloadWallapepr(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "hwBitmap"    # Landroid/graphics/Bitmap;

    .line 1154
    if-nez p1, :cond_0

    return-void

    .line 1156
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1158
    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1159
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v2, Lcom/android/server/policy/OemGestureButton$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/OemGestureButton$6;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    .line 1183
    return-void
.end method

.method preloadWallapepr(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1185
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1186
    .local v0, "focus":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_1

    .line 1189
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1190
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1192
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1193
    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1195
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v2, Lcom/android/server/policy/OemGestureButton$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$7;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    .line 1207
    :cond_1
    return-void
.end method

.method setBackgoundWallpaper()V
    .locals 1

    .line 1326
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1331
    :goto_0
    return-void
.end method

.method public setIgnoreNotchWallpaper()V
    .locals 6

    .line 1305
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-eqz v0, :cond_2

    .line 1306
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1307
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "setIgnoreNotchWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1311
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 1310
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1312
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-object v1, v1, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1313
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-object v1, v1, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1314
    .local v1, "notchBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1316
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1317
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1318
    invoke-virtual {v2, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1320
    .end local v1    # "notchBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1322
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton;->setBackgoundWallpaper()V

    .line 1323
    return-void
.end method

.method public updateNotchSettings(Z)V
    .locals 3
    .param p1, "ignore"    # Z

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-ne v0, p1, :cond_0

    .line 1295
    return-void

    .line 1296
    :cond_0
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotchSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    .line 1298
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 1302
    return-void
.end method

.method updateSettings(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "guide"    # Z

    .line 1092
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-ne v0, p1, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eq v0, p2, :cond_1

    .line 1093
    :cond_0
    sput-boolean p1, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    .line 1094
    sput-boolean p2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    .line 1095
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " guide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->updateWindows(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1098
    :cond_1
    return-void
.end method
